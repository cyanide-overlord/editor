import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:dart_eval_runtime/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval_runtime/src/foundation/change_notifier.dart';

class $TextEditingController implements $Instance {
  late final $Instance _superclass = $ChangeNotifier.wrap($value);

  $TextEditingController.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $TextEditingController.wrap(TextEditingController(text: args[0]?.$value));
  }

  @override
  final TextEditingController $value;

  @override
  TextEditingController get $reified => $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'clear':
        return $Function((runtime, target, args) {
          (target!.$value as TextEditingController).clear();
          return null;
        });
      case 'text':
        return $String($value.text);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'text':
        $value.text = value.$value;
        break;
    }
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
