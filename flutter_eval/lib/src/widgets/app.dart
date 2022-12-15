import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/src/sky_engine/ui/painting.dart';
import 'package:flutter_eval/src/widgets/framework.dart';

const $WidgetsAppType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/app.dart', 'WidgetsApp'));

const $WidgetsAppDeclaration =
    BridgeClassDef(BridgeClassType($WidgetsAppType, isAbstract: false, $extends: $WidgetType),
        constructors: {
          '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($WidgetsAppType), namedParams: [
            BridgeParameter('color', BridgeTypeAnnotation($ColorType), false),
            BridgeParameter('home', BridgeTypeAnnotation($WidgetType), true),
            BridgeParameter('title', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.stringType)), true),
            BridgeParameter('builder', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.functionType)), true),
          ]))
        },
        methods: {},
        getters: {},
        setters: {},
        fields: {},
        wrap: true);
