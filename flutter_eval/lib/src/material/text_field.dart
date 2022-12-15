import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/src/widgets/editable_text.dart';
import 'package:flutter_eval/src/widgets/framework.dart';

const $TextFieldType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/material/text_field.dart', 'TextField'));

const $TextFieldDeclaration =
    BridgeClassDef(BridgeClassType($TextFieldType, isAbstract: false, $extends: $StatefulWidget$bridgeType),
        constructors: {
          '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($TextFieldType), namedParams: [
            BridgeParameter('controller', BridgeTypeAnnotation($TextEditingControllerType), true),
            BridgeParameter('enabled', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.boolType)), true),
            BridgeParameter('onChanged', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.functionType)), true),
          ]))
        },
        methods: {},
        getters: {},
        setters: {},
        fields: {},
        wrap: true);
