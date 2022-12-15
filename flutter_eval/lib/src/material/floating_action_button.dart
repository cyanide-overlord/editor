import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/material.dart';

import '../widgets/framework.dart';

const $FloatingActionButtonType = BridgeTypeRef.spec(
    BridgeTypeSpec('package:flutter/src/material/floating_action_button.dart', 'FloatingActionButton'));

const $FloatingActionButtonDeclaration =
    BridgeClassDef(BridgeClassType($FloatingActionButtonType, isAbstract: false, $extends: $StatelessWidget$bridgeType),
        constructors: {
          '': BridgeConstructorDef(
              BridgeFunctionDef(returns: BridgeTypeAnnotation($FloatingActionButtonType), namedParams: [
            BridgeParameter('onPressed', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.functionType)), false),
            BridgeParameter('child', BridgeTypeAnnotation($WidgetType, nullable: true), true),
          ]))
        },
        methods: {},
        getters: {},
        setters: {},
        fields: {},
        wrap: true);
