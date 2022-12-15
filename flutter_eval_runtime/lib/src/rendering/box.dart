import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:dart_eval_runtime/stdlib/core.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_eval_runtime/src/rendering/object.dart';

class $BoxConstraints implements $Instance {
  late final $Instance _superclass = $Constraints.wrap($value);

  $BoxConstraints.wrap(this.$value);

  @override
  final BoxConstraints $value;

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $BoxConstraints.wrap(BoxConstraints(
      minWidth: args[0]?.$value ?? 0.0,
      maxWidth: args[1]?.$value ?? double.infinity,
      minHeight: args[2]?.$value ?? 0.0,
      maxHeight: args[3]?.$value ?? double.infinity,
    ));
  }

  static $Value? $tightFor(Runtime runtime, $Value? target, List<$Value?> args) {
    return $BoxConstraints.wrap(BoxConstraints.tightFor(
      width: args[0]?.$value,
      height: args[1]?.$value,
    ));
  }

  static $Value? $tightForFinite(Runtime runtime, $Value? target, List<$Value?> args) {
    return $BoxConstraints.wrap(BoxConstraints.tightForFinite(
      width: args[0]?.$value ?? 0.0,
      height: args[1]?.$value ?? 0.0,
    ));
  }

  static $Value? $expand(Runtime runtime, $Value? target, List<$Value?> args) {
    return $BoxConstraints.wrap(BoxConstraints.expand(
      width: args[0]?.$value,
      height: args[1]?.$value,
    ));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'minWidth':
        return $double($value.minWidth);
      case 'maxWidth':
        return $double($value.maxWidth);
      case 'minHeight':
        return $double($value.minHeight);
      case 'maxHeight':
        return $double($value.maxHeight);
      default:
        return _superclass.$getProperty(runtime, identifier);
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
