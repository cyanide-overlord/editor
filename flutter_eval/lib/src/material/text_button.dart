import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/src/widgets/framework.dart';

const $TextButtonType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/material/text_button.dart', 'TextButton'));

const $TextButtonDeclaration =
    BridgeClassDef(BridgeClassType($TextButtonType, isAbstract: false, $extends: $StatelessWidget$bridgeType),
        constructors: {
          '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($TextButtonType), namedParams: [
            BridgeParameter('onPressed', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.functionType)), false),
            BridgeParameter('child', BridgeTypeAnnotation($WidgetType, nullable: true), false),
          ]))
        },
        methods: {},
        getters: {},
        setters: {},
        fields: {},
        wrap: true);
