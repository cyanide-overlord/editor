import 'dart:ui';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval wrapper for [Size]
const $SizeType = BridgeTypeRef.spec(BridgeTypeSpec('dart:ui', 'Size'));

const $SizeDeclaration = BridgeClassDef(BridgeClassType($SizeType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($SizeType), params: [
        BridgeParameter('width', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
        BridgeParameter('height', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false)
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);
