import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/src/material/colors.dart';
import 'package:flutter_eval/src/material/text_theme.dart';
import 'package:flutter_eval/src/sky_engine/ui/painting.dart';

const $ThemeDataType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/material/theme_data.dart', 'ThemeData'));

const $ThemeDataDeclaration = BridgeClassDef(BridgeClassType($ThemeDataType, isAbstract: false),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ThemeDataType), namedParams: [
        BridgeParameter(
            'useMaterial3', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.boolType), nullable: true), true),
        // COLOR
        BridgeParameter('colorSchemeSeed', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('primarySwatch', BridgeTypeAnnotation($MaterialColorType, nullable: true), true),
        BridgeParameter('primaryColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('primaryColorLight', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('primaryColorDark', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('canvasColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('scaffoldBackgroundColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('bottomAppBarColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('cardColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('dividerColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('highlightColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('splashColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('selectedRowColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('unselectedWidgetColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('disabledColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('buttonColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        BridgeParameter('secondaryHeaderColor', BridgeTypeAnnotation($ColorType, nullable: true), true),
        // TYPOGRAPHY & ICONOGRAPHY
        BridgeParameter('textTheme', BridgeTypeAnnotation($TextThemeType, nullable: true), true),
        BridgeParameter('primaryTextTheme', BridgeTypeAnnotation($TextThemeType, nullable: true), true),
      ]))
    },
    methods: {},
    getters: {
      'useMaterial3':
          BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.boolType)))),
      'colorSchemeSeed': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'primarySwatch': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($MaterialColorType))),
      'primaryColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'primaryColorLight': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'primaryColorDark': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'canvasColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'scaffoldBackgroundColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'bottomAppBarColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'cardColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'dividerColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'highlightColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'splashColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'selectedRowColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'unselectedWidgetColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'disabledColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'buttonColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'secondaryHeaderColor': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($ColorType))),
      'textTheme': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($TextThemeType))),
      'primaryTextTheme': BridgeMethodDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($TextThemeType))),
    },
    setters: {},
    fields: {},
    wrap: true);
