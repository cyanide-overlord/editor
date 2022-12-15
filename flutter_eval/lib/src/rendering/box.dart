import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_eval/src/rendering/object.dart';

const $BoxConstraintsType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/rendering/box.dart', 'BoxConstraints'));

const $BoxConstraintsDeclaration = BridgeClassDef(BridgeClassType($BoxConstraintsType, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($BoxConstraintsType), namedParams: [
        BridgeParameter('minWidth', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
        BridgeParameter('maxWidth', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
        BridgeParameter('minHeight', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
        BridgeParameter('maxHeight', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
      ])),
      'tightFor':
          BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($BoxConstraintsType), namedParams: [
        BridgeParameter(
            'width', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType), nullable: true), true),
        BridgeParameter(
            'height', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType), nullable: true), true),
      ])),
      'tightForFinite':
          BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($BoxConstraintsType), namedParams: [
        BridgeParameter('width', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
        BridgeParameter('height', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
      ])),
      'expand':
          BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($BoxConstraintsType), namedParams: [
        BridgeParameter(
            'width', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType), nullable: true), true),
        BridgeParameter(
            'height', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType), nullable: true), true),
      ])),
    },
    methods: {},
    getters: {
      'minWidth': BridgeMethodDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)))),
      'maxWidth': BridgeMethodDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)))),
      'minHeight': BridgeMethodDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)))),
      'maxHeight': BridgeMethodDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)))),
    },
    setters: {},
    fields: {},
    wrap: true);
