import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:flutter/widgets.dart';

class $Key implements $Instance {
  $Key.wrap(this.$value);

  @override
  final Key $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
  }

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is $Key && runtimeType == other.runtimeType && $value == other.$value ||
      other is Key && $value == other;

  @override
  int get hashCode => $value.hashCode;
}
