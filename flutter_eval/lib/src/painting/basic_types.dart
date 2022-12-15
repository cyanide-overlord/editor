import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
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

const $VerticalDirectionType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/painting/basic_types.dart', 'VerticalDirection'));

const $VerticalDirectionDeclaration =
    BridgeEnumDef($VerticalDirectionType, methods: {}, getters: {}, setters: {}, values: ['up', 'down'], fields: {});

/// dart_eval type definition for [Axis]
const $AxisType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/painting/basic_types.dart', 'Axis'));

/// dart_eval class declaration for [Axis]
const $AxisDeclaration =
    BridgeEnumDef($AxisType, methods: {}, getters: {}, setters: {}, values: ['horizontal', 'vertical'], fields: {});
