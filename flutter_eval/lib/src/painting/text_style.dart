import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_eval/src/sky_engine/ui/painting.dart';
import 'package:flutter_eval/src/sky_engine/ui/text.dart';

const $TextStyleType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/painting/text_style.dart', 'TextStyle'));

const $TextStyleDeclaration = BridgeClassDef(BridgeClassType($TextStyleType, isAbstract: false),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($TextStyleType), namedParams: [
        BridgeParameter(
            'inherit', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.boolType), nullable: false), true),
        BridgeParameter('color', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('backgroundColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter(
            'fontSize', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType), nullable: true), true),
        BridgeParameter('fontWeight', BridgeTypeAnnotation($FontWeightType, nullable: true), true),
        BridgeParameter('fontStyle', BridgeTypeAnnotation($FontStyleType, nullable: true), true),
        BridgeParameter(
            'letterSpacing', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType), nullable: true), true),
        BridgeParameter(
            'wordSpacing', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType), nullable: true), true),
        // TODO BridgeParameter('textBaseline', BridgeTypeAnnotation($TextBaselineType, nullable: true), true),
        BridgeParameter(
            'height', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType), nullable: true), true),
      ]))
    },
    methods: {},
    getters: {
      'inherit': BridgeMethodDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.boolType)), namedParams: [])),
      'color': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType), namedParams: [])),
      'backgroundColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType), namedParams: [])),
      'fontSize': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), namedParams: [])),
      'fontWeight': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($FontWeightType), namedParams: [])),
      'fontStyle': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($FontStyleType), namedParams: [])),
      'letterSpacing': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), namedParams: [])),
      'wordSpacing': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), namedParams: [])),
      /*'textBaseline':
            BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($TextBaselineType), namedParams: [])),*/
      'height': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), namedParams: [])),
    },
    setters: {},
    fields: {},
    wrap: true);
