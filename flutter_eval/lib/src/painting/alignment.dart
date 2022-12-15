import 'package:dart_eval/dart_eval_bridge.dart';

const $AlignmentGeometryType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/painting/alignment.dart', 'AlignmentGeometry'));

const $AlignmentGeometryDeclaration = BridgeClassDef(BridgeClassType($AlignmentGeometryType, isAbstract: true),
    constructors: {}, methods: {}, getters: {}, setters: {}, fields: {}, wrap: true);

const $AlignmentType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/painting/alignment.dart', 'Alignment'));

const _stValueType = BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($AlignmentType)), isStatic: true);
const $AlignmentDeclaration =
    BridgeClassDef(BridgeClassType($AlignmentType, isAbstract: false, $extends: $AlignmentGeometryType),
        constructors: {
          '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($AlignmentType), namedParams: [
            BridgeParameter('x', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
            BridgeParameter('y', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), false),
          ]))
        },
        methods: {},
        getters: {
          'x': BridgeMethodDef(
              BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)))),
          'y': BridgeMethodDef(
              BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)))),
          'topLeft': _stValueType,
          'topCenter': _stValueType,
          'topRight': _stValueType,
          'centerLeft': _stValueType,
          'center': _stValueType,
          'centerRight': _stValueType,
          'bottomLeft': _stValueType,
          'bottomCenter': _stValueType,
          'bottomRight': _stValueType,
        },
        setters: {},
        fields: {},
        wrap: true);
