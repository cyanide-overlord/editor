import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/src/sky_engine/ui/painting.dart';
import 'package:flutter_eval/src/widgets/app.dart';
import 'package:flutter_eval/src/widgets/framework.dart';

const $MaterialAppType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/material/app.dart', 'MaterialApp'));

const $MaterialAppDeclaration =
    BridgeClassDef(BridgeClassType($MaterialAppType, isAbstract: false, $extends: $WidgetsAppType),
        constructors: {
          '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($MaterialAppType), namedParams: [
            BridgeParameter('color', BridgeTypeAnnotation($ColorType), true),
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
