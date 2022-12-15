import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/src/widgets/framework.dart';

const $ElevatedButtonType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/material/elevated_button.dart', 'ElevatedButton'));

const $ElevatedButtonDeclaration =
    BridgeClassDef(BridgeClassType($ElevatedButtonType, isAbstract: false, $extends: $StatefulWidget$bridgeType),
        constructors: {
          '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ElevatedButtonType), namedParams: [
            BridgeParameter('child', BridgeTypeAnnotation($WidgetType), false),
            BridgeParameter('onPressed', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.functionType)), false),
          ]))
        },
        methods: {},
        getters: {},
        setters: {},
        fields: {},
        wrap: true);
