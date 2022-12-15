import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:flutter/material.dart';

class $ElevatedButton implements $Instance {
  $ElevatedButton.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ElevatedButton.wrap(ElevatedButton(
      child: args[0]!.$value,
      onPressed: args[1] == null ? null : () => (args[1]! as EvalCallable).call(runtime, null, []),
    ));
  }

  @override
  final ElevatedButton $value;

  @override
  get $reified => $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
  }

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }
}
