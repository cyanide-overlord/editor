import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:flutter/material.dart';

class $FloatingActionButton implements $Instance {
  $FloatingActionButton.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $FloatingActionButton.wrap(FloatingActionButton(
      onPressed: () => (args[0]! as EvalCallable).call(runtime, null, []),
      child: args[1]?.$value,
    ));
  }

  @override
  final FloatingActionButton $value;

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
