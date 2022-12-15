import 'package:dart_eval/dart_eval_bridge.dart';

const $MainAxisAlignmentType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/rendering/flex.dart', 'MainAxisAlignment'));

const $MainAxisAlignmentDeclaration = BridgeEnumDef($MainAxisAlignmentType,
    values: ['start', 'end', 'center', 'spaceBetween', 'spaceAround', 'spaceEvenly'],
    methods: {},
    getters: {},
    setters: {},
    fields: {});

const $CrossAxisAlignmentType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/rendering/flex.dart', 'CrossAxisAlignment'));

const $CrossAxisAlignmentDeclaration = BridgeEnumDef($CrossAxisAlignmentType,
    values: ['start', 'end', 'center', 'stretch', 'baseline'], methods: {}, getters: {}, setters: {}, fields: {});

const $MainAxisSizeType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/rendering/flex.dart', 'MainAxisSize'));

const $MainAxisSizeDeclaration =
    BridgeEnumDef($MainAxisSizeType, values: ['min', 'max'], methods: {}, getters: {}, setters: {}, fields: {});
