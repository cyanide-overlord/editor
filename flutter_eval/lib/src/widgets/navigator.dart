import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_eval/src/widgets/framework.dart';

const $NavigatorType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/navigator.dart', 'Navigator'));

const $NavigatorDeclaration = BridgeClassDef(
    BridgeClassType($NavigatorType, isAbstract: false, $extends: $StatefulWidget$bridgeType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($NavigatorType), namedParams: []))
    },
    methods: {
      'of': BridgeMethodDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($NavigatorStateType), params: [
            BridgeParameter('context', BridgeTypeAnnotation($BuildContextType), false),
          ]),
          isStatic: true)
    },
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $NavigatorStateType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/navigator.dart', 'NavigatorState'));

const $NavigatorStateDeclaration = BridgeClassDef(
    BridgeClassType($NavigatorStateType, isAbstract: false, $extends: $State$bridgeType),
    constructors: {},
    methods: {
      'pushNamed': BridgeMethodDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($NavigatorStateType), params: [
            BridgeParameter('name', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.stringType)), false),
          ], namedParams: [
            BridgeParameter(
                'arguments', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.objectType), nullable: true), true),
          ]),
          isStatic: true),
      'pushReplacementNamed': BridgeMethodDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($NavigatorStateType), params: [
            BridgeParameter('name', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.stringType)), false),
          ], namedParams: [
            BridgeParameter(
                'arguments', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.objectType), nullable: true), true),
          ]),
          isStatic: true),
      'pop': BridgeMethodDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($NavigatorStateType), params: [
            BridgeParameter('result', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.objectType)), true),
          ]),
          isStatic: true),
    },
    getters: {},
    setters: {},
    fields: {},
    wrap: true);
