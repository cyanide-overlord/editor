import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/cupertino.dart';

const $ChangeNotifierType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/foundation/change_notifier.dart', 'ChangeNotifier'));

const _$ChangeNotifierMethods = {
  'addListener': BridgeMethodDef(
      BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.voidType)), params: [
    BridgeParameter('listener', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.functionType)), false),
  ])),
  'dispose':
      BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.voidType)))),
  'notifyListeners':
      BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.voidType)))),
  'removeListener': BridgeMethodDef(
      BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.voidType)), params: [
    BridgeParameter('listener', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.functionType)), false),
  ])),
};

const $ChangeNotifierDeclaration = BridgeClassDef(BridgeClassType($ChangeNotifierType, isAbstract: false),
    constructors: {'': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ChangeNotifierType)))},
    methods: _$ChangeNotifierMethods,
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $ChangeNotifier$bridgeDeclaration = BridgeClassDef(BridgeClassType($ChangeNotifierType, isAbstract: false),
    constructors: {'': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ChangeNotifierType)))},
    methods: _$ChangeNotifierMethods,
    getters: {},
    setters: {},
    fields: {},
    bridge: true);
