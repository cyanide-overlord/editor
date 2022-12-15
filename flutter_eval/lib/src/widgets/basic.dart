import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter_eval/src/foundation/key.dart';
import 'package:flutter_eval/src/painting/basic_types.dart';
import 'package:flutter_eval/src/painting/edge_insets.dart';
import 'package:flutter_eval/src/rendering/flex.dart';
import 'package:flutter_eval/src/sky_engine/ui/text.dart';
import 'package:flutter_eval/src/widgets/framework.dart';

const widgetsBasicSource = '''
export 'package:flutter/animation.dart';
export 'package:flutter/foundation.dart' show
    ChangeNotifier,
    FlutterErrorDetails,
    Listenable,
    TargetPlatform,
    ValueNotifier;
export 'package:flutter/painting.dart';
export 'package:flutter/rendering.dart' show
  MainAxisSize,
  MainAxisAlignment,
  CrossAxisAlignment;
''';

const $PaddingType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/basic.dart', 'Padding'));

const $PaddingDeclaration = BridgeClassDef(BridgeClassType($PaddingType, isAbstract: false, $extends: $WidgetType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($PaddingType), namedParams: [
        BridgeParameter('key', BridgeTypeAnnotation($KeyType, nullable: true), true),
        BridgeParameter('padding', BridgeTypeAnnotation($EdgeInsetsGeometryType), false),
        BridgeParameter('child', BridgeTypeAnnotation($WidgetType), true),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $ColumnType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/basic.dart', 'Column'));

const $ColumnDeclaration = BridgeClassDef(BridgeClassType($ColumnType, isAbstract: false, $extends: $WidgetType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColumnType), namedParams: [
        BridgeParameter('key', BridgeTypeAnnotation($KeyType, nullable: true), true),
        BridgeParameter('mainAxisAlignment', BridgeTypeAnnotation($MainAxisAlignmentType), true),
        BridgeParameter('mainAxisSize', BridgeTypeAnnotation($MainAxisSizeType), true),
        BridgeParameter('crossAxisAlignment', BridgeTypeAnnotation($CrossAxisAlignmentType), true),
        BridgeParameter('verticalDirection', BridgeTypeAnnotation($VerticalDirectionType), true),
        BridgeParameter('textBaseline', BridgeTypeAnnotation($TextBaselineType), true),
        BridgeParameter(
            'children', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.listType, [$WidgetType])), true),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $RowType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/basic.dart', 'Row'));

const $RowDeclaration = BridgeClassDef(BridgeClassType($RowType, isAbstract: false, $extends: $WidgetType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($RowType), namedParams: [
        BridgeParameter('key', BridgeTypeAnnotation($KeyType, nullable: true), true),
        BridgeParameter('mainAxisAlignment', BridgeTypeAnnotation($MainAxisAlignmentType), true),
        BridgeParameter('mainAxisSize', BridgeTypeAnnotation($MainAxisSizeType), true),
        BridgeParameter('crossAxisAlignment', BridgeTypeAnnotation($CrossAxisAlignmentType), true),
        BridgeParameter('textDirection', BridgeTypeAnnotation($TextDirectionType), true),
        BridgeParameter('verticalDirection', BridgeTypeAnnotation($VerticalDirectionType), true),
        BridgeParameter(
            'children', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.listType, [$WidgetType])), true),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $CenterType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/basic.dart', 'Center'));

const $CenterDeclaration = BridgeClassDef(BridgeClassType($CenterType, isAbstract: false, $extends: $WidgetType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($CenterType), namedParams: [
        BridgeParameter('key', BridgeTypeAnnotation($KeyType, nullable: true), true),
        BridgeParameter('widthFactor', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
        BridgeParameter('heightFactor', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
        BridgeParameter('child', BridgeTypeAnnotation($WidgetType), true),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);

const $BuilderType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/widgets/basic.dart', 'Builder'));

const $BuilderDeclaration = BridgeClassDef(BridgeClassType($BuilderType, isAbstract: false, $extends: $WidgetType),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($BuilderType), namedParams: [
        BridgeParameter('key', BridgeTypeAnnotation($KeyType, nullable: true), true),
        BridgeParameter('builder', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.functionType)), true),
      ]))
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true);
