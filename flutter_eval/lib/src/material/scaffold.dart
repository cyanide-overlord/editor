import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_eval/src/material/app_bar.dart';
import 'package:flutter_eval/src/material/floating_action_button.dart';
import 'package:flutter_eval/src/material/snack_bar.dart';

import '../widgets/framework.dart';

const $ScaffoldType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/material/scaffold.dart', 'Scaffold'));

const $ScaffoldDeclaration = BridgeClassDef(BridgeClassType($ScaffoldType, isAbstract: false, $extends: $WidgetType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ScaffoldType), namedParams: [
        BridgeParameter('appBar', BridgeTypeAnnotation($AppBarType), true),
        BridgeParameter('body', BridgeTypeAnnotation($WidgetType), true),
        BridgeParameter('floatingActionButton', BridgeTypeAnnotation($FloatingActionButtonType), true),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $ScaffoldMessengerType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/material/scaffold.dart', 'ScaffoldMessenger'));

const $ScaffoldMessengerDeclaration = BridgeClassDef(
    BridgeClassType($ScaffoldMessengerType, isAbstract: false, $extends: $StatefulWidget$bridgeType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ScaffoldMessengerType), namedParams: [
        BridgeParameter('child', BridgeTypeAnnotation($WidgetType), false),
      ]))
    },
    methods: {
      'of': BridgeMethodDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($ScaffoldMessengerStateType), namedParams: [
            BridgeParameter('context', BridgeTypeAnnotation($BuildContextType), true),
          ]),
          isStatic: true)
    },
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $ScaffoldMessengerStateType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/material/scaffold.dart', 'ScaffoldMessengerState'));

const $ScaffoldMessengerStateDeclaration =
    BridgeClassDef(BridgeClassType($ScaffoldMessengerStateType, isAbstract: false, $extends: $State$bridgeType),
        constructors: {},
        methods: {
          'showSnackBar': BridgeMethodDef(
              BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.voidType)), namedParams: [
                BridgeParameter('snackBar', BridgeTypeAnnotation($SnackBarType), true),
              ]),
              isStatic: true)
        },
        getters: {},
        setters: {},
        fields: {},
        wrap: true);
