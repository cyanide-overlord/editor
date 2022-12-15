import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/widgets.dart';

const $KeyType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/foundation/key.dart', 'Key'));

const $KeyDeclaration = BridgeClassDef(BridgeClassType($KeyType, isAbstract: true),
    constructors: {}, methods: {}, getters: {}, setters: {}, fields: {}, wrap: true);
