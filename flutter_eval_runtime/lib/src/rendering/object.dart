import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:dart_eval_runtime/stdlib/core.dart';
import 'package:flutter/rendering.dart';

class $Constraints implements $Instance {
  $Constraints.wrap(this.$value);

  @override
  final Constraints $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'isTight':
        return $bool($value.isTight);
      case 'isNormalized':
        return $bool($value.isNormalized);
      default:
        throw UnimplementedError('Property not found $identifier on Constraints');
    }
  }

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError('Property not found or cannot set $identifier on Constraints');
  }
}
