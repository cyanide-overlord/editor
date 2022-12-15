import 'package:dart_eval/dart_eval_bridge.dart';

const $FontStyleType = BridgeTypeRef.spec(BridgeTypeSpec('dart:ui', 'FontStyle'));

const $FontStyleDeclaration =
    BridgeEnumDef($FontStyleType, values: ['normal', 'italic'], methods: {}, getters: {}, setters: {}, fields: {});

const $FontWeightType = BridgeTypeRef.spec(BridgeTypeSpec('dart:ui', 'FontWeight'));

const $FontWeightDeclaration = BridgeEnumDef($FontWeightType,
    methods: {},
    getters: {},
    setters: {},
    values: ['w100', 'w200', 'w300', 'w400', 'w500', 'w600', 'w700', 'w800', 'w900'],
    fields: {});

const $TextDirectionType = BridgeTypeRef.spec(BridgeTypeSpec('dart:ui', 'TextDirection'));

const $TextDirectionDeclaration =
    BridgeEnumDef($TextDirectionType, methods: {}, getters: {}, setters: {}, values: ['rtl', 'ltr'], fields: {});

const $TextBaselineType = BridgeTypeRef.spec(BridgeTypeSpec('dart:ui', 'TextBaseline'));

const $TextBaselineDeclaration = BridgeEnumDef($TextBaselineType,
    methods: {}, getters: {}, setters: {}, values: ['alphabetic', 'ideographic'], fields: {});
