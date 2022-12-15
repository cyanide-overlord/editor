import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:dart_eval_runtime/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval_runtime/src/widgets/framework.dart';

class $MaterialApp implements $Instance {
  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $MaterialApp.wrap(MaterialApp(
      color: args[0]?.$value,
      home: args[1]?.$value,
      title: args[2]?.$value ?? '',
      builder: args[3] == null
          ? null
          : (ctx, widget) => (args[3] as EvalCallable)(
                  runtime, null, [$BuildContext.wrap(ctx), widget == null ? const $null() : $Widget.wrap(widget)])
              as Widget,
    ));
  }

  $MaterialApp.wrap(this.$value);

  @override
  final MaterialApp $value;

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
}
