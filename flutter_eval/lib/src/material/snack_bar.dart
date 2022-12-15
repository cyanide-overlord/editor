import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/src/painting/edge_insets.dart';
import 'package:flutter_eval/src/sky_engine/ui/painting.dart';
import 'package:flutter_eval/src/widgets/framework.dart';

const $SnackBarType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/material/snack_bar.dart', 'SnackBar'));

const $SnackBarDeclaration =
    BridgeClassDef(BridgeClassType($SnackBarType, isAbstract: false, $extends: $StatefulWidget$bridgeType),
        constructors: {
          '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($SnackBarType), namedParams: [
            BridgeParameter('content', BridgeTypeAnnotation($WidgetType), false),
            BridgeParameter('backgroundColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
            BridgeParameter(
                'elevation', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType), nullable: true), true),
            BridgeParameter('padding', BridgeTypeAnnotation($EdgeInsetsGeometryType, nullable: true), true),
          ]))
        },
        methods: {},
        getters: {},
        setters: {},
        fields: {},
        wrap: true);
