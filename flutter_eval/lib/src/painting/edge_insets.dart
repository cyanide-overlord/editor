import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/cupertino.dart';

const $EdgeInsetsGeometryType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/painting/edge_insets.dart', 'EdgeInsetsGeometry'));
const $EdgeInsetsGeometryDeclaration = BridgeClassDef(BridgeClassType($EdgeInsetsGeometryType, isAbstract: true),
    constructors: {}, methods: {}, getters: {}, setters: {}, fields: {}, wrap: true);

const $EdgeInsetsType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/painting/edge_insets.dart', 'EdgeInsets'));

const $EdgeInsetsDeclaration =
    BridgeClassDef(BridgeClassType($EdgeInsetsType, isAbstract: true, $extends: $EdgeInsetsGeometryType),
        constructors: {
          'fromLTRB': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($EdgeInsetsType), params: [
            BridgeParameter('left', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
            BridgeParameter('top', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
            BridgeParameter('right', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
            BridgeParameter('bottom', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
          ])),
          'all': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($EdgeInsetsType), params: [
            BridgeParameter('value', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
          ])),
          'only': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($EdgeInsetsType), namedParams: [
            BridgeParameter('left', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
            BridgeParameter('top', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
            BridgeParameter('right', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
            BridgeParameter('bottom', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true)
          ])),
          'symmetric':
              BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($EdgeInsetsType), namedParams: [
            BridgeParameter('vertical', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
            BridgeParameter('horizontal', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
          ]))
        },
        methods: {},
        getters: {},
        setters: {},
        fields: {},
        wrap: true);
