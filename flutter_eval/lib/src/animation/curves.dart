import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/animation.dart';

const animationCurvesSource = '''
class Curves {
  Curves._();
  static const Curve linear = _Linear._();
  static const Curve decelerate = _DecelerateCurve._();
  static const Cubic fastLinearToSlowEaseIn = Cubic(0.18, 1.0, 0.04, 1.0);
  static const Cubic ease = Cubic(0.25, 0.1, 0.25, 1.0);
  static const Cubic easeIn = Cubic(0.42, 0.0, 1.0, 1.0);
  static const Cubic easeInToLinear = Cubic(0.67, 0.03, 0.65, 0.09);
  static const Cubic easeInSine = Cubic(0.47, 0.0, 0.745, 0.715);
  static const Cubic easeInQuad = Cubic(0.55, 0.085, 0.68, 0.53);
  static const Cubic easeInCubic = Cubic(0.55, 0.055, 0.675, 0.19);
  static const Cubic easeInQuart = Cubic(0.895, 0.03, 0.685, 0.22);
  static const Cubic easeInQuint = Cubic(0.755, 0.05, 0.855, 0.06);
  static const Cubic easeInExpo = Cubic(0.95, 0.05, 0.795, 0.035);
  static const Cubic easeInCirc = Cubic(0.6, 0.04, 0.98, 0.335);
  static const Cubic easeInBack = Cubic(0.6, -0.28, 0.735, 0.045);
  static const Cubic easeOut = Cubic(0.0, 0.0, 0.58, 1.0);
  static const Cubic linearToEaseOut = Cubic(0.35, 0.91, 0.33, 0.97);
  static const Cubic easeOutSine = Cubic(0.39, 0.575, 0.565, 1.0);
  static const Cubic easeOutQuad = Cubic(0.25, 0.46, 0.45, 0.94);
  static const Cubic easeOutCubic = Cubic(0.215, 0.61, 0.355, 1.0);
  static const Cubic easeOutQuart = Cubic(0.165, 0.84, 0.44, 1.0);
  static const Cubic easeOutQuint = Cubic(0.23, 1.0, 0.32, 1.0);
  static const Cubic easeOutExpo = Cubic(0.19, 1.0, 0.22, 1.0);
  static const Cubic easeOutCirc = Cubic(0.075, 0.82, 0.165, 1.0);
  static const Cubic easeOutBack = Cubic(0.175, 0.885, 0.32, 1.275);
  static const Cubic easeInOut = Cubic(0.42, 0.0, 0.58, 1.0);
  static const Cubic easeInOutSine = Cubic(0.445, 0.05, 0.55, 0.95);
  static const Cubic easeInOutQuad = Cubic(0.455, 0.03, 0.515, 0.955);
  static const Cubic easeInOutCubic = Cubic(0.645, 0.045, 0.355, 1.0);
  /*
  static const ThreePointCubic easeInOutCubicEmphasized = ThreePointCubic(
      Offset(0.05, 0), Offset(0.133333, 0.06),
      Offset(0.166666, 0.4),
      Offset(0.208333, 0.82), Offset(0.25, 1),
  );
  */
  static const Cubic easeInOutQuart = Cubic(0.77, 0.0, 0.175, 1.0);
  static const Cubic easeInOutQuint = Cubic(0.86, 0.0, 0.07, 1.0);
  static const Cubic easeInOutExpo = Cubic(1.0, 0.0, 0.0, 1.0);
  static const Cubic easeInOutCirc = Cubic(0.785, 0.135, 0.15, 0.86);
  static const Cubic easeInOutBack = Cubic(0.68, -0.55, 0.265, 1.55);

  static const Cubic fastOutSlowIn = Cubic(0.4, 0.0, 0.2, 1.0);
  static const Cubic slowMiddle = Cubic(0.15, 0.85, 0.85, 0.15);

  static const ElasticInCurve elasticIn = ElasticInCurve();
  static const ElasticOutCurve elasticOut = ElasticOutCurve();
  static const ElasticInOutCurve elasticInOut = ElasticInOutCurve();
}
''';

const $ParametricCurveType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/animation/curves.dart', 'ParametricCurve'));

const $ParametricCurveDeclaration = BridgeClassDef(BridgeClassType($ParametricCurveType, isAbstract: true),
    constructors: {}, methods: {}, getters: {}, setters: {}, fields: {}, wrap: true);

/// dart_eval wrapper for [Curve]
const $CurveType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/animation/curves.dart', 'Curve'));

const $CurveDeclaration = BridgeClassDef(BridgeClassType($CurveType, $extends: $ParametricCurveType, isAbstract: true),
    constructors: {},
    methods: {
      'transform': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)),
          params: [BridgeParameter('t', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false)]))
    },
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $_LinearType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/animation/curves.dart', '_Linear'));

const $_LinearDeclaration = BridgeClassDef(BridgeClassType($_LinearType, $extends: $CurveType),
    constructors: {'_': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($_LinearType)))},
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $SawToothType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/animation/curves.dart', 'SawTooth'));

const $SawToothDeclaration = BridgeClassDef(BridgeClassType($SawToothType, $extends: $CurveType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($SawToothType), params: [
        BridgeParameter('count', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.intType)), false),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $IntervalType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/animation/curves.dart', 'Interval'));

const $IntervalDeclaration = BridgeClassDef(BridgeClassType($IntervalType, $extends: $CurveType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($IntervalType), params: [
        BridgeParameter('begin', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
        BridgeParameter('end', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
        BridgeParameter('curve', BridgeTypeAnnotation($CurveType), true),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $ThresholdType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/animation/curves.dart', 'Threshold'));

const $ThresholdDeclaration = BridgeClassDef(BridgeClassType($ThresholdType, $extends: $CurveType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ThresholdType), params: [
        BridgeParameter('threshold', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $CubicType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/animation/curves.dart', 'Cubic'));

const $CubicDeclaration = BridgeClassDef(BridgeClassType($CubicType, $extends: $CurveType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($CubicType), params: [
        BridgeParameter('a', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
        BridgeParameter('b', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
        BridgeParameter('c', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
        BridgeParameter('d', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $_DecelerateCurveType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/animation/curves.dart', '_DecelerateCurve'));

const $_DecelerateCurveDeclaration = BridgeClassDef(BridgeClassType($_DecelerateCurveType, $extends: $CurveType),
    constructors: {'_': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($_DecelerateCurveType)))},
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $ElasticInCurveType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/animation/curves.dart', 'ElasticInCurve'));

const $ElasticInCurveDeclaration = BridgeClassDef(BridgeClassType($ElasticInCurveType, $extends: $CurveType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ElasticInCurveType), params: [
        BridgeParameter('period', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $ElasticOutCurveType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/animation/curves.dart', 'ElasticOutCurve'));

const $ElasticOutCurveDeclaration = BridgeClassDef(BridgeClassType($ElasticOutCurveType, $extends: $CurveType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ElasticOutCurveType), params: [
        BridgeParameter('period', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $ElasticInOutCurveType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/animation/curves.dart', 'ElasticInOutCurve'));

const $ElasticInOutCurveDeclaration = BridgeClassDef(BridgeClassType($ElasticInOutCurveType, $extends: $CurveType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ElasticInOutCurveType), params: [
        BridgeParameter('period', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);
