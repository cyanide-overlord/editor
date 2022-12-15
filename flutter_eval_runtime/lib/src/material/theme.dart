import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval_runtime/src/material/theme_data.dart';

class $Theme implements $Instance {
  $Theme.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Theme.wrap(Theme(
      data: args[0]!.$value,
      child: args[1]!.$value,
    ));
  }

  static $Value? $of(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ThemeData.wrap(Theme.of(args[0]!.$value));
  }

  @override
  final Theme $value;

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
