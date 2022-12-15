import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/rendering.dart';

const $ConstraintsType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/rendering/object.dart', 'Constraints'));

const $ConstraintsDeclaration = BridgeClassDef(BridgeClassType($ConstraintsType, isAbstract: true),
    constructors: {},
    methods: {},
    getters: {
      'isTight':
          BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.boolType)))),
      'isNormalized':
          BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.boolType)))),
    },
    setters: {},
    fields: {},
    wrap: true);
