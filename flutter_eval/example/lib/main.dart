import 'package:flutter/material.dart';
import 'package:flutter_eval/flutter_eval.dart';

void main() {
  runApp(const EvalExample());
}

class EvalExample extends StatelessWidget {
  const EvalExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const EvalWidget(
      packages: {
        'example': {
          'main.dart': '''
              import 'package:flutter/material.dart';

              class MyApp extends StatelessWidget {
                const MyApp({Key? key}) : super(key: key);

                // This widget is the root of your application.
                @override
                Widget build(BuildContext context) {
                  return MaterialApp(
                    title: 'flutter_eval demo',
                    home: const MyHomePage(title: 'flutter_eval demo home page'),
                  );
                }
              }

              class MyHomePage extends StatefulWidget {
                const MyHomePage({Key? key, required this.title}) : super(key: key);

                final String title;

                @override
                State<MyHomePage> createState() {
                  return _MyHomePageState();
                }
              }

              class _MyHomePageState extends State<MyHomePage> {
                _MyHomePageState();
                int _counter = 0;

                @override
                Widget build(BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(widget.title),
                    ),
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'You have pushed the button this many times:',
                          ),
                          Text(
                            '\$_counter',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      )
                    ),
                    floatingActionButton: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          _counter++;
                        });
                      },
                      tooltip: 'Increment',
                      child: Text('+'),
                    ),
                  );
                }
              }

            '''
        }
      },

      /// In debug mode, flutter_eval will continually re-generate a compiled
      /// EVC bytecode file for the given program, and save it to the specified
      /// assetPath. During runtime, it will instead load the compiled EVC file.
      /// To ensure this works, you must add the file path to the assets section of
      /// your pubspec.yaml file.
      assetPath: 'assets/program.evc',

      /// Specify which library (i.e. which file) to use as an entrypoint.
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
