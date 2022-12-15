import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:dart_eval_runtime/stdlib/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_eval_runtime/src/sky_engine/ui/painting.dart';

class $ColorSwatch implements $Instance {
  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ColorSwatch.wrap(ColorSwatch(args[0]!.$value, args[1]!.$value));
  }

  $ColorSwatch.wrap(this.$value) : _superclass = $Color.wrap($value);

  @override
  final ColorSwatch $value;
  final $Instance _superclass;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case '[]':
        return $Function((runtime, target, args) {
          final res = target!.$value[args[0]!.$value];
          if (res == null) {
            return const $null();
          }
          return $Color.wrap(res as Color);
        });
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  ColorSwatch get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
