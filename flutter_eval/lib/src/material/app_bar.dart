import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/src/sky_engine/ui/painting.dart';
import 'package:flutter_eval/src/widgets/text.dart';

import '../widgets/framework.dart';

const $AppBarType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/material/app_bar.dart', 'AppBar'));

const $AppBarDeclaration = BridgeClassDef(BridgeClassType($AppBarType, isAbstract: false, $extends: $WidgetType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($AppBarType), namedParams: [
        BridgeParameter('title', BridgeTypeAnnotation($TextType), true),
        BridgeParameter('backgroundColor', BridgeTypeAnnotation($ColorType), true),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);
