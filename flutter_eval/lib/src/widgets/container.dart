import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_eval/src/foundation/key.dart';
import 'package:flutter_eval/src/painting/alignment.dart';
import 'package:flutter_eval/src/painting/edge_insets.dart';
import 'package:flutter_eval/src/rendering/box.dart';
import 'package:flutter_eval/src/sky_engine/ui/painting.dart';

import 'framework.dart';

/// dart_eval wrapper for [Container]
const $ContainerType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/container.dart', 'Container'));

/// [Container] compile-type class declaration for dart_eval
const $ContainerDeclaration = BridgeClassDef(BridgeClassType($ContainerType, $extends: $StatelessWidget$bridgeType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ContainerType), namedParams: [
        BridgeParameter('key', BridgeTypeAnnotation($KeyType, nullable: true), true),
        BridgeParameter('alignment', BridgeTypeAnnotation($AlignmentGeometryType, nullable: true), true),
        BridgeParameter('padding', BridgeTypeAnnotation($EdgeInsetsGeometryType, nullable: true), true),
        BridgeParameter('color', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter(
            'width', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType), nullable: true), true),
        BridgeParameter(
            'height', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType), nullable: true), true),
        BridgeParameter('constraints', BridgeTypeAnnotation($BoxConstraintsType, nullable: true), true),
        BridgeParameter('margin', BridgeTypeAnnotation($EdgeInsetsGeometryType, nullable: true), true),
        BridgeParameter('transformAlignment', BridgeTypeAnnotation($AlignmentGeometryType, nullable: true), true),
        BridgeParameter('child', BridgeTypeAnnotation($WidgetType, nullable: true), true),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);
