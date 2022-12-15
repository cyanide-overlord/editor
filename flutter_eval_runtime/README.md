[![Star on Github](https://img.shields.io/github/stars/ethanblake4/flutter_eval?logo=github&colorB=orange&label=stars)](https://github.com/ethanblake4/flutter_eval)
[![License: BSD-3](https://img.shields.io/badge/license-BSD3-purple.svg)](https://opensource.org/licenses/BSD-3-Clause)

`flutter_eval_runtime` is the runtime component of [`flutter_eval`](https://pub.dev/packages/dart_eval), a Flutter bridge library for [`dart_eval`](https://pub.dev/packages/dart_eval) that enables code-push and dynamic eval() functionality for Flutter apps.

| dart_eval    | [![dart_eval package](https://img.shields.io/pub/v/dart_eval.svg?label=dart_eval&color=teal)](https://pub.dev/packages/dart_eval)             | [![dart_eval_runtime package](https://img.shields.io/pub/v/dart_eval_runtime.svg?label=dart_eval_runtime&color=teal)](https://pub.dev/packages/dart_eval_runtime)             |        
| ------------ | --------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------  |
| flutter_eval | [![flutter_eval package](https://img.shields.io/pub/v/flutter_eval.svg?label=flutter_eval&color=blue)](https://pub.dev/packages/flutter_eval) | [![flutter_eval_runtime package](https://img.shields.io/pub/v/flutter_eval_runtime.svg?label=flutter_eval_runtime&color=blue)](https://pub.dev/packages/flutter_eval_runtime) |

flutter_eval_runtime can be used as a standalone package, which is especially useful for apps that need Web compatibility,
as it has no dependency on `dart:io`. It may also be useful for reducing app size. However, in cases where these are not
important, it is recommended to use the `flutter_eval` package instead for an enhanced feature set.

## Usage

Please see the [flutter_eval package README](https://pub.dev/packages/flutter_eval) for information 
on how to generate an EVC bytecode file that can be consumed by `flutter_eval_runtime`. 
Once you have the file, it can be used as follows after adding it as a asset:

```dart
return RuntimeWidget(
    uri: Uri.parse('asset:assets/program.evc'),
    library: 'package:example/main.dart',
    function: 'MyWidget.',
    args: [$String('Example name')]
);
```

`RuntimeWidget` also allows you to specify a URL:

```dart
return RuntimeWidget(
    uri: Uri.parse('https://example.com/program.evc'),
    library: 'package:example/main.dart',
    function: 'MyWidget.',
    args: [$String('Example name')]
);
```