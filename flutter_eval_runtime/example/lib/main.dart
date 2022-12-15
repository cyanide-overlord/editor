import 'package:flutter/material.dart';
import 'package:flutter_eval_runtime/flutter_eval_runtime.dart';

void main() {
  runApp(const EvalExample());
}

class EvalExample extends StatelessWidget {
  const EvalExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RuntimeWidget(
      /// Load EVC bytecode from an asset. You can also specify a URL.
      uri: Uri.parse('asset:assets/program.evc'),

      /// Specify which library (i.e. which file from the source code) to use
      /// as an entrypoint.
      library: 'package:example/main.dart',

      /// Specify which function to call as the entrypoint.
      /// To use a constructor, use "ClassName.constructorName" syntax. In
      /// this case we are calling a default constructor so the constructor
      /// name is blank.
      function: 'MyApp.',

      /// Specify the arguments to pass to the entrypoint. Generally these
      /// should be dart_eval [$Value] objects, but when invoking a static or
      /// top-level function or constructor, [int]s, [double]s, and [bool]s
      /// should be passed directly.
      args: [null],
    );
  }
}
