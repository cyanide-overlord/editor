import 'dart:async';
import 'dart:math';

import 'package:editor/initial_content.dart';
import 'package:editor/inline_window.dart';
import 'package:editor/model/event/global_events.dart';
import 'package:editor/model/ide/ide_theme.dart';
import 'package:editor/model/ide/project.dart';
import 'package:editor/model/ide/run_configs.dart';
import 'package:editor/model/ide/tasks.dart';
import 'package:editor/ui/editor/editor.dart';
import 'package:editor/util/base_menus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_eval/flutter_eval.dart';
import 'package:fs_shim/fs_shim.dart';
import 'package:scoped_model/scoped_model.dart';

void main() async {
  runApp(const EditorApp());
}

final _fs = fileSystemMemory;

Future<FileSystem> setupInternalFileStructure() async {
  for (final syntaxName in ['Dart', 'JSON', 'Protobuf', 'SQL', 'YAML']) {
    // Load syntaxes from Flutter assets into virtual file system
    final data = await rootBundle.loadString('assets/syntax/$syntaxName.syntax');
    final file = _fs.file('/editor/syntax/$syntaxName.syntax');
    await file.create(recursive: true);
    await file.writeAsString(data);
  }

  final file = _fs.file('/project/main.dart');
  await file.create(recursive: true);
  await file.writeAsString(initialContent);

  return _fs;
}

class EditorApp extends StatelessWidget {
  const EditorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final projectModel = Project(fileSystem: _fs);
    final themeModel = IdeTheme();
    final tasksModel = Tasks();
    final runconfigsModel = RunConfigurations();

    Widget app = ScopedModelDescendant<IdeTheme>(builder: (context, widget, model) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: const ColorScheme.dark(surface: Colors.blueGrey, background: Colors.blueGrey),
            brightness: Brightness.dark,
            scaffoldBackgroundColor: const Color(0xFF37434F),
            primarySwatch: Colors.blue,
            iconTheme: IconThemeData(color: IdeTheme.of(context).text.col),
            fontFamily: 'Roboto',
            textButtonTheme: TextButtonThemeData(
                style: ButtonStyle(
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: ButtonStyleButton.allOrNull(const Size(0, 0)),
                    padding: ButtonStyleButton.allOrNull(const EdgeInsets.all(2)),
                    textStyle: ButtonStyleButton.allOrNull(const TextStyle(fontWeight: FontWeight.normal)),
                    foregroundColor: ButtonStyleButton.allOrNull(Colors.white))),
            textTheme: TextTheme(
              bodyText2: TextStyle(color: IdeTheme.of(context).text.col, fontSize: 12.0),
              bodyText1: TextStyle(color: IdeTheme.of(context).textActive.col, fontSize: 12.0),
            )),
        builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(viewPadding: const EdgeInsets.only(top: 80)), child: child!),
        home: const HomePage(),
        shortcuts: {...WidgetsApp.defaultShortcuts},
      );
    });

    app = ScopedModel(model: themeModel, child: app);
    app = ScopedModel(model: runconfigsModel, child: app);
    app = ScopedModel(model: tasksModel, child: app);
    return ScopedModel(model: projectModel, child: app);
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late StreamSubscription _saveSubscription;

  @override
  void initState() {
    super.initState();

    setupBaseMenus(context);
    if (Project.of(context).openFiles.isEmpty) {
      initProject(Project.of(context));
    }

    _saveSubscription = eventBus.on<SaveFile>().listen((event) {
      setState(() {});
    });
  }

  initProject(Project project) async {
    await setupInternalFileStructure();

    project.rootFolder = '/project';
    project.openFile('/project/main.dart').then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    String? fileContent;
    final currentFile = Project.of(context).openFiles['/project/main.dart'];
    if (currentFile != null) {
      fileContent = adocToString(currentFile.document);
    }

    return Scaffold(
      appBar: AppBar(title: const Text("EvalPad")),
      body: fileContent == null
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(child: Editor()),
                      FlutterPreview(
                        packages: {
                          'example': {
                            'main.dart': fileContent,
                          }
                        },
                      )
                    ],
                  ),
                ),
              ],
            ), /*,*/
    );
  }

  @override
  void dispose() {
    _saveSubscription.cancel();
    super.dispose();
  }
}

class FlutterPreview extends StatefulWidget {
  const FlutterPreview({Key? key, required this.packages}) : super(key: key);

  final Map<String, Map<String, String>> packages;

  @override
  State<FlutterPreview> createState() => _FlutterPreviewState();
}

class _FlutterPreviewState extends State<FlutterPreview> {
  double width = 400;

  @override
  Widget build(BuildContext context) {
    return InlineWindow(
        constraints: BoxConstraints.tightFor(width: width),
        constraintsCallback: (delta) {
          setState(() {
            width -= delta.dx;
            width = min(600, max(width, 270));
          });
        },
        resizeLeft: true,
        header: const Text('flutter_eval Preview'),
        child: CompilerWidget(
          library: 'package:example/main.dart',
          packages: widget.packages,
        ));
  }
}
