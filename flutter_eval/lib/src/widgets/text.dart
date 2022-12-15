import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_eval/src/foundation/key.dart';
import 'package:flutter_eval/src/painting/text_style.dart';
import 'package:flutter_eval/src/widgets/framework.dart';

const $TextType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/text.dart', 'Text'));

const $TextDeclaration = BridgeClassDef(BridgeClassType($TextType, $extends: $StatelessWidget$bridgeType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($TextType), params: [
        BridgeParameter('data', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.stringType)), false),
      ], namedParams: [
        BridgeParameter('key', BridgeTypeAnnotation($KeyType, nullable: true), true),
        BridgeParameter('style', BridgeTypeAnnotation($TextStyleType, nullable: true), true),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);
