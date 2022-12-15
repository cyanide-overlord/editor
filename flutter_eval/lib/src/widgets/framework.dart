import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/widgets.dart';

const widgetsFrameworkSource = ''' 
export 'package:flutter/foundation.dart' show FlutterError, ErrorSummary, ErrorDescription, ErrorHint,
                    debugPrint, debugPrintStack, VoidCallback, ValueChanged, 
                    ValueGetter, ValueSetter, DiagnosticsNode, DiagnosticLevel, 
                    Key, LocalKey, ValueKey;
''';

const $WidgetType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/widgets.dart', 'Widget'));

const $WidgetDeclaration = BridgeClassDef(BridgeClassType($WidgetType, isAbstract: true),
    constructors: {}, methods: {}, getters: {}, setters: {}, fields: {}, wrap: true);

/// dart_eval bridge class for [StatelessWidget]
const $StatelessWidget$bridgeType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/framework.dart', 'StatelessWidget'));

/// [StatelessWidget] compile-type class declaration for dart_eval
const $StatelessWidget$bridgeDeclaration = BridgeClassDef(
    BridgeClassType($StatelessWidget$bridgeType, $extends: $WidgetType, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($StatelessWidget$bridgeType)))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    bridge: true);

const $StatefulWidget$bridgeType =
    BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/framework.dart', 'StatefulWidget'));

/// [StatefulWidget] compile-type class declaration for dart_eval
const $StatefulWidget$bridgeDeclaration = BridgeClassDef(
    BridgeClassType($StatefulWidget$bridgeType, $extends: $WidgetType, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($StatefulWidget$bridgeType)))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    bridge: true);

const $State$bridgeType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/framework.dart', 'State'));

/// [State] compile-type class declaration for dart_eval
const $State$bridgeDeclaration = BridgeClassDef(
    BridgeClassType($State$bridgeType,
        $extends: $WidgetType,
        isAbstract: true,
        generics: {'T': BridgeGenericParam($extends: $StatefulWidget$bridgeType)}),
    constructors: {'': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($State$bridgeType)))},
    methods: {
      'setState': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.voidType)),
          params: [BridgeParameter('fn', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.functionType)), false)])),
      'initState':
          BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.voidType)))),
      'build': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation($WidgetType),
          params: [BridgeParameter('context', BridgeTypeAnnotation($BuildContextType), false)])),
    },
    getters: {
      'widget': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T')))),
    },
    setters: {},
    fields: {},
    bridge: true);

const $BuildContextType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/widgets.dart', 'BuildContext'));

const $BuildContextDeclaration = BridgeClassDef(BridgeClassType($BuildContextType, isAbstract: true),
    constructors: {}, methods: {}, getters: {}, setters: {}, fields: {}, wrap: true);
