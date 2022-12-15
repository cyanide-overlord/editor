import 'package:editor/model/event/global_events.dart';
import 'package:editor/util/ot/atext_changeset.dart';
import 'package:editor/util/strings/detect_indents.dart';
import 'package:flutter/widgets.dart';
import 'package:fs_shim/fs.dart';
import 'package:scoped_model/scoped_model.dart';

/// A [Model] representing the current workspace
class Project extends Model {
  Project({required this.fileSystem});

  /// Returns the nearest [Project] in the widget hierarchy
  static Project of(BuildContext context) => ScopedModel.of<Project>(context);

  FileSystem fileSystem;

  String _rootFolder = '';
  String _activeFile = '';

  /// Open files in the project
  Map<String, ProjectFile> openFiles = {};

  /// The configuration data for the project
  //FutureOr<Database> projectDb;

  /// The root folder of the workspace
  String get rootFolder => _rootFolder;

  /// The currently active file, eg the one whose editor window was most recently focused
  String get activeFile => _activeFile;

  ProjectFile get activeProjectFile => openFiles[_activeFile]!;

  set rootFolder(String newRootFolder) {
    _rootFolder = newRootFolder;
    notifyListeners();
  }

  set activeFile(String newActiveFile) {
    _activeFile = newActiveFile;
    notifyListeners();
  }

  /// Opens a file in the editor
  Future openFile(String filepath) async {
    var file = fileSystem.file(filepath);
    await openCustomFile(file, filepath);
  }

  Future openCustomFile(File file, String virtualFilepath) async {
    var fstr = await file.readAsString();
    final isCrlf = fstr.contains('\r\n');
    if (isCrlf) {
      fstr = fstr.replaceAll('\r\n', '\n');
    }
    var doc = ADocument.fromText('$fstr\n');
    final indents = detectIndents(fstr);
    openFiles[virtualFilepath] = ProjectFile(
        virtualFilepath, virtualFilepath.substring(virtualFilepath.lastIndexOf('/') + 1), file, doc, [],
        lineTerminatorFormat: isCrlf ? LineTerminatorFormat.CRLF : LineTerminatorFormat.LF, indentData: indents);

    openFiles[virtualFilepath]!.lineLengths = doc.map((line) => (line['s'] as String).length).toList();
    notifyListeners();
    eventBus.fire(MakeEditorFileActive(virtualFilepath));
  }

  /// Updates the file specified by [filepath] with the associated [changes],
  /// and notifies all listeners
  void updateFile(String filepath, Changeset changes) {
    openFiles[filepath]!.document = changes.applyTo(openFiles[filepath]!.document);
    openFiles[filepath]!.hasModified = true;
    //DartAnalyzer().editFile(filepath, adocToString(openFiles[filepath].document)).then((value) {});
    notifyListeners();
  }

  /// Saves the file specified by [filepath]
  void saveFile(String filepath) {
    print("save file");
    if (!openFiles[filepath]!.hasModified) return;
    var filestring = adocToString(openFiles[filepath]!.document);
    if (openFiles[filepath]!.lineTerminatorFormat == LineTerminatorFormat.CRLF) {
      filestring = filestring.replaceAll('\n', '\r\n');
    }
    openFiles[filepath]!.file.writeAsString(filestring);
    openFiles[filepath]!.hasModified = false;
    notifyListeners();
    eventBus.fire(SaveFile(filepath, true));
  }

  /// Closes the file specified by [filepath]
  void closeFile(String filepath) {
    openFiles.remove(filepath);
    notifyListeners();
  }
}

String adocToString(ADocument doc) {
  final str = doc.map((line) => (line['s'] as String)).reduce((s1, s2) => s1 + s2);
  return str.substring(0, str.length - 1);
}

class ProjectFile {
  ProjectFile(this.fileLocation, this.fileName, this.file, this.document, this.lineLengths,
      {this.lineTerminatorFormat = LineTerminatorFormat.LF, required this.indentData});

  /// Location of file on disk
  String fileLocation;

  /// Displayed name of file, usually [fileLocation] substring after last slash
  String fileName;

  /// File reference
  File file;

  ADocument document;
  bool hasModified = false;
  List<int> lineLengths;
  LineTerminatorFormat lineTerminatorFormat;
  IndentData indentData;

  @override
  String toString() {
    return 'ProjectFile{fileLocation: $fileLocation, fileName: $fileName, document: $document, ll: $lineLengths}';
  }
}

enum LineTerminatorFormat { LF, CRLF }
