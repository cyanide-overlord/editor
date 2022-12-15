import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/painting.dart';

const $ColorType = BridgeTypeRef.spec(BridgeTypeSpec('dart:ui', 'Color'));

const $ColorDeclaration = BridgeClassDef(BridgeClassType($ColorType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation($ColorType),
          params: [BridgeParameter('value', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.intType)), false)])),
      'fromARGB': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType), params: [
        BridgeParameter('a', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.intType)), false),
        BridgeParameter('r', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.intType)), false),
        BridgeParameter('g', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.intType)), false),
        BridgeParameter('b', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.intType)), false)
      ])),
      'fromRGBO': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType), params: [
        BridgeParameter('r', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.intType)), false),
        BridgeParameter('g', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.intType)), false),
        BridgeParameter('b', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.intType)), false),
        BridgeParameter('o', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.intType)), false)
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);
