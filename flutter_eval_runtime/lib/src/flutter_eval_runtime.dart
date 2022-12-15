import 'dart:io';

import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import '../flutter_eval_runtime.dart';

/// A [RuntimeWidget] loads and runs EVC bytecode from a file, asset, or URL
/// at runtime and displays the returned [Widget].
///
/// [uri] is the URI to the EVC bytecode. Use the file:// scheme to load
/// from a local file, the asset:// scheme to load from an asset, or the http://
/// or https:// scheme to load from a URL.
///
/// [library] is the fully-qualified import path to the Dart library
/// containing the function that will be called to generate the widget. Eg,
/// 'package:my_package/main.dart'.
///
/// [function] specifies the name of the function that will be called to
/// generate the widget. In the case of constructors, this is
/// 'ClassName.constructorName', and for default constructors it is simply
/// 'ClassName.'.
///
/// You can optionally add arguments using [args]. These must be specified
/// fully and in-order of definition, regardless of the use of named arguments.
/// For example, for a function defined as such:
///     void main(int a, {String c =  "hello"}) { ... }
/// you could specify [args] as [1, $String("greetings")].
///
/// If you need to use the default value of a named argument, you can use
/// null, as in [1, null].
///
/// Arguments should generally be dart_eval [$Value] subclasses, except for
/// [int]s, [double]s, and [bool]s which are passed directly. Note that this
/// includes passing a null *value*, which must be represented as [$null] -
/// using null directly has a different meaning signaling 'no value specified'.
///
/// [loading] is a widget that is displayed while the EVC bytecode is loading.
///
class RuntimeWidget extends StatefulWidget {
  const RuntimeWidget(
      {required this.uri, required this.library, required this.function, this.args = const [], this.loading, Key? key})
      : super(key: key);

  final Uri uri;
  final String library;
  final String function;
  final List<dynamic> args;
  final Widget? loading;

  @override
  State<RuntimeWidget> createState() => _RuntimeWidgetState();
}

class _RuntimeWidgetState extends State<RuntimeWidget> {
  Runtime? runtime;

  @override
  void initState() {
    super.initState();

    final scheme = widget.uri.scheme;
    if (scheme == 'file') {
      _loadFromFile();
    } else if (scheme == 'asset') {
      _loadFromAsset();
    } else if (scheme == 'http' || scheme == 'https') {
      _loadFromUrl();
    } else {
      throw 'Unsupported scheme: ${widget.uri.scheme}';
    }
  }

  void _loadFromFile() {
    final file = File(widget.uri.path);
    final bytecode = file.readAsBytesSync();
    runtime = Runtime(ByteData.sublistView(bytecode));
    setupFlutterForRuntime(runtime!);
    runtime!.setup();
  }

  void _loadFromAsset() {
    final asset = widget.uri.path;
    rootBundle.load(asset).then((bytecode) => setState(() {
          runtime = Runtime(ByteData.sublistView(bytecode));
          setupFlutterForRuntime(runtime!);
          runtime!.setup();
        }));
  }

  void _loadFromUrl() async {
    final bytecode = await http.get(widget.uri).then((response) => response.bodyBytes);
    runtime = Runtime(ByteData.sublistView(bytecode));
    setupFlutterForRuntime(runtime!);
    runtime!.setup();
  }

  @override
  Widget build(BuildContext context) {
    if (runtime == null) return widget.loading ?? Container();
    final result = runtime!.executeLib(widget.library, widget.function, widget.args);
    return (result as $Value).$value;
  }
}
