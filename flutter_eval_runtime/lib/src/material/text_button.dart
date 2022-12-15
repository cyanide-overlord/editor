import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:dart_eval_runtime/stdlib/core.dart';
import 'package:flutter/material.dart';

class $TextButton implements $Instance {
  late final _superclass = $Object($value);

  $TextButton.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $TextButton.wrap(TextButton(
      onPressed: args[0] == null ? null : () => (args[0]! as EvalCallable).call(runtime, null, []),
      child: args[1]?.$value,
    ));
  }

  @override
  final TextButton $value;

  @override
  get $reified => $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
