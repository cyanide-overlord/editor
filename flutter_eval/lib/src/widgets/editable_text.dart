import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/src/foundation/change_notifier.dart';

const $TextEditingControllerType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/editable_text.dart', 'TextEditingController'));

const $TextEditingControllerDeclaration = BridgeClassDef(
    BridgeClassType($TextEditingControllerType, isAbstract: false, $extends: $ChangeNotifierType),
    constructors: {
      '': BridgeConstructorDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($TextEditingControllerType), namedParams: [
        BridgeParameter(
            'text', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.stringType), nullable: true), true),
      ]))
    },
    methods: {
      'clear':
          BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.voidType))))
    },
    getters: {},
    setters: {},
    fields: {
      'text': BridgeFieldDef(BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.stringType))),
    },
    wrap: true);
