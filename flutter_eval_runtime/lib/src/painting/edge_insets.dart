import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:dart_eval_runtime/stdlib/core.dart';
import 'package:flutter/cupertino.dart';

class $EdgeInsetsGeometry implements EdgeInsetsGeometry, $Instance {
  $EdgeInsetsGeometry.wrap(this.$value);

  @override
  final EdgeInsetsGeometry $value;

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }

  @override
  EdgeInsetsGeometry operator %(double other) => $value % other;

  @override
  EdgeInsetsGeometry operator *(double other) => $value * other;

  @override
  EdgeInsetsGeometry operator -() => -$value;

  @override
  EdgeInsetsGeometry operator /(double other) => $value / other;

  @override
  EdgeInsetsGeometry add(EdgeInsetsGeometry other) => $value.add(other);

  @override
  double along(Axis axis) => $value.along(axis);

  @override
  EdgeInsetsGeometry clamp(EdgeInsetsGeometry min, EdgeInsetsGeometry max) => $value.clamp(min, max);

  @override
  Size get collapsedSize => $value.collapsedSize;

  @override
  Size deflateSize(Size size) => $value.deflateSize(size);

  @override
  EdgeInsetsGeometry get flipped => $value.flipped;

  @override
  double get horizontal => $value.horizontal;

  @override
  Size inflateSize(Size size) => $value.inflateSize(size);

  @override
  bool get isNonNegative => $value.isNonNegative;

  @override
  EdgeInsets resolve(TextDirection? direction) => $value.resolve(direction);

  @override
  EdgeInsetsGeometry subtract(EdgeInsetsGeometry other) => $value.subtract(other);

  @override
  double get vertical => $value.vertical;

  @override
  EdgeInsetsGeometry operator ~/(double other) => $value ~/ other;
}

class $EdgeInsets implements EdgeInsets, $Instance {
  late final $Instance _superclass = $Object(this);

  $EdgeInsets.wrap(this.$value);

  static $Value? $fromLTRB(Runtime runtime, $Value? target, List<$Value?> args) {
    return $EdgeInsets.wrap(EdgeInsets.fromLTRB(
      args[0]!.$value,
      args[1]?.$value,
      args[2]!.$value,
      args[3]?.$value,
    ));
  }

  static $Value? $all(Runtime runtime, $Value? target, List<$Value?> args) {
    return $EdgeInsets.wrap(EdgeInsets.all(
      args[0]!.$value,
    ));
  }

  @override
  final EdgeInsets $value;

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }

  @override
  EdgeInsets operator %(double other) => $value % other;

  @override
  EdgeInsets operator *(double other) => $value * other;

  @override
  EdgeInsets operator /(double other) => $value / other;

  @override
  EdgeInsetsGeometry add(EdgeInsetsGeometry other) => $value.add(other);

  @override
  double along(Axis axis) => $value.along(axis);

  @override
  EdgeInsetsGeometry clamp(EdgeInsetsGeometry min, EdgeInsetsGeometry max) => $value.clamp(min, max);

  @override
  Size get collapsedSize => $value.collapsedSize;

  @override
  Size deflateSize(Size size) => $value.deflateSize(size);

  @override
  EdgeInsets get flipped => $value.flipped;

  @override
  double get horizontal => $value.horizontal;

  @override
  Size inflateSize(Size size) => $value.inflateSize(size);

  @override
  bool get isNonNegative => $value.isNonNegative;

  @override
  EdgeInsets resolve(TextDirection? direction) => $value.resolve(direction);

  @override
  EdgeInsetsGeometry subtract(EdgeInsetsGeometry other) => $value.subtract(other);

  @override
  double get vertical => $value.vertical;

  @override
  EdgeInsets operator ~/(double other) => $value ~/ other;

  @override
  EdgeInsets operator +(EdgeInsets other) => $value + other;

  @override
  EdgeInsets operator -() => -$value;

  @override
  EdgeInsets operator -(EdgeInsets other) => $value - other;

  @override
  double get bottom => $value.bottom;

  @override
  Offset get bottomLeft => $value.bottomLeft;

  @override
  Offset get bottomRight => $value.bottomRight;

  @override
  EdgeInsets copyWith({double? left, double? top, double? right, double? bottom}) {
    return $value.copyWith(left: left, top: top, right: right, bottom: bottom);
  }

  @override
  Rect deflateRect(Rect rect) => $value.deflateRect(rect);

  @override
  Rect inflateRect(Rect rect) => $value.inflateRect(rect);

  @override
  double get left => $value.left;

  @override
  double get right => $value.right;

  @override
  double get top => $value.top;

  @override
  Offset get topLeft => $value.topLeft;

  @override
  Offset get topRight => $value.topRight;
}
