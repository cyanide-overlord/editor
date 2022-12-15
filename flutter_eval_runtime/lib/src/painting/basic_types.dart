import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:flutter/material.dart';

const paintingBasicTypesSource = '''
export 'dart:ui' show
  BlendMode,
  BlurStyle,
  Canvas,
  Clip,
  Color,
  ColorFilter,
  FilterQuality,
  FontStyle,
  FontWeight,
  ImageShader,
  Locale,
  MaskFilter,
  Offset,
  Paint,
  PaintingStyle,
  Path,
  PathFillType,
  PathOperation,
  Radius,
  RRect,
  RSTransform,
  Rect,
  Shader,
  Size,
  StrokeCap,
  StrokeJoin,
  TextAffinity,
  TextAlign,
  TextBaseline,
  TextBox,
  TextDecoration,
  TextDecorationStyle,
  TextDirection,
  TextPosition,
  TileMode,
  VertexMode,
  // TODO(werainkhatri): remove these after their deprecation period in engine
  // https://github.com/flutter/flutter/pull/99505
  hashValues,
  hashList;

export 'package:flutter/foundation.dart' show VoidCallback;
 ''';

class $VerticalDirection implements $Instance {
  static final $values = {
    'up': $VerticalDirection.wrap(VerticalDirection.up),
    'down': $VerticalDirection.wrap(VerticalDirection.down),
  };

  $VerticalDirection.wrap(this.$value);

  @override
  final VerticalDirection $value;

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

/// dart_eval wrapper for [Axis]
class $Axis implements $Instance {
  /// Runtime enum values
  static final $values = {
    'horizontal': $Axis.wrap(Axis.horizontal),
    'vertical': $Axis.wrap(Axis.vertical),
  };

  $Axis.wrap(this.$value);

  @override
  final Axis $value;

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
