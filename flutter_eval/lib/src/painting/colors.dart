import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_eval/src/sky_engine/ui/painting.dart';

const $ColorSwatchType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/painting/colors.dart', 'ColorSwatch'));

const $ColorSwatchDeclaration =
    BridgeClassDef(BridgeClassType($ColorSwatchType, generics: {'T': BridgeGenericParam()}, $extends: $ColorType),
        constructors: {
          '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorSwatchType), params: [
            BridgeParameter('primary', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.intType)), false),
            BridgeParameter('_swatch', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.mapType)), false)
          ])),
        },
        methods: {},
        getters: {},
        setters: {},
        fields: {},
        wrap: true);
