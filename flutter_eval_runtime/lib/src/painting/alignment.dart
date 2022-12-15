import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:dart_eval_runtime/stdlib/core.dart';
import 'package:flutter/material.dart';

class $AlignmentGeometry implements $Instance {
  $AlignmentGeometry.wrap(this.$value);

  @override
  final AlignmentGeometry $value;

  late final $Instance _superclass = $Object($value);

  @override
  AlignmentGeometry get $reified => $value;

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

class $Alignment implements $Instance {
  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Alignment.wrap(Alignment(
      args[0]!.$value,
      args[1]!.$value,
    ));
  }

  static $Value? $topLeft(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Alignment.wrap(Alignment.topLeft);
  }

  static $Value? $topCenter(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Alignment.wrap(Alignment.topCenter);
  }

  static $Value? $topRight(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Alignment.wrap(Alignment.topRight);
  }

  static $Value? $centerLeft(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Alignment.wrap(Alignment.centerLeft);
  }

  static $Value? $center(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Alignment.wrap(Alignment.center);
  }

  static $Value? $centerRight(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Alignment.wrap(Alignment.centerRight);
  }

  static $Value? $bottomLeft(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Alignment.wrap(Alignment.bottomLeft);
  }

  static $Value? $bottomCenter(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Alignment.wrap(Alignment.bottomCenter);
  }

  static $Value? $bottomRight(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Alignment.wrap(Alignment.bottomRight);
  }

  $Alignment.wrap(this.$value);

  @override
  final Alignment $value;

  late final $Instance _superclass = $AlignmentGeometry.wrap($value);

  @override
  get $reified => $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'x':
        return $double($value.x);
      case 'y':
        return $double($value.y);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }
}
