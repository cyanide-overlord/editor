import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:flutter/material.dart';

class $SnackBar implements $Instance {
  $SnackBar.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $SnackBar.wrap(SnackBar(
      content: args[0]!.$value,
      backgroundColor: args[1]?.$value,
      elevation: args[2]?.$value,
      padding: args[3]?.$value,
    ));
  }

  @override
  final SnackBar $value;

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
