import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/src/material/theme_data.dart';
import 'package:flutter_eval/src/widgets/framework.dart';

const $ThemeType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/material/theme.dart', 'Theme'));

const $ThemeDeclaration =
    BridgeClassDef(BridgeClassType($ThemeType, isAbstract: false, $extends: $StatelessWidget$bridgeType),
        constructors: {
          '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ThemeType), namedParams: [
            BridgeParameter('data', BridgeTypeAnnotation($ThemeDataType), false),
            BridgeParameter('child', BridgeTypeAnnotation($WidgetType), false),
          ]))
        },
        methods: {
          'of': BridgeMethodDef(
              BridgeFunctionDef(returns: BridgeTypeAnnotation($ThemeDataType), params: [
                BridgeParameter('context', BridgeTypeAnnotation($BuildContextType), true),
              ]),
              isStatic: true)
        },
        getters: {},
        setters: {},
        fields: {},
        wrap: true);
