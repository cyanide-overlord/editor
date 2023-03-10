import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/src/painting/text_style.dart';

const $TextThemeType = BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/material/text_theme.dart', 'TextTheme'));

const _atTextStyle = BridgeTypeAnnotation($TextStyleType, nullable: true);
const $TextThemeDeclaration = BridgeClassDef(BridgeClassType($TextThemeType, isAbstract: false),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($TextThemeType), namedParams: [
        BridgeParameter('displayLarge', _atTextStyle, true),
        BridgeParameter('displayMedium', _atTextStyle, true),
        BridgeParameter('displaySmall', _atTextStyle, true),
        BridgeParameter('headlineLarge', _atTextStyle, true),
        BridgeParameter('headlineMedium', _atTextStyle, true),
        BridgeParameter('headlineSmall', _atTextStyle, true),
        BridgeParameter('titleLarge', _atTextStyle, true),
        BridgeParameter('titleMedium', _atTextStyle, true),
        BridgeParameter('titleSmall', _atTextStyle, true),
        BridgeParameter('bodyLarge', _atTextStyle, true),
        BridgeParameter('bodyMedium', _atTextStyle, true),
        BridgeParameter('bodySmall', _atTextStyle, true),
        BridgeParameter('labelLarge', _atTextStyle, true),
        BridgeParameter('labelMedium', _atTextStyle, true),
        BridgeParameter('labelSmall', _atTextStyle, true),
        BridgeParameter('headline1', _atTextStyle, true),
        BridgeParameter('headline2', _atTextStyle, true),
        BridgeParameter('headline3', _atTextStyle, true),
        BridgeParameter('headline4', _atTextStyle, true),
        BridgeParameter('headline5', _atTextStyle, true),
        BridgeParameter('headline6', _atTextStyle, true),
        BridgeParameter('subtitle1', _atTextStyle, true),
        BridgeParameter('subtitle2', _atTextStyle, true),
        BridgeParameter('bodyText1', _atTextStyle, true),
        BridgeParameter('bodyText2', _atTextStyle, true),
        BridgeParameter('caption', _atTextStyle, true),
        BridgeParameter('button', _atTextStyle, true),
        BridgeParameter('overline', _atTextStyle, true),
      ]))
    },
    methods: {},
    getters: {
      'displayLarge': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'displayMedium': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'displaySmall': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'headlineLarge': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'headlineMedium': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'headlineSmall': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'titleLarge': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'titleMedium': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'titleSmall': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'bodyLarge': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'bodyMedium': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'bodySmall': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'labelLarge': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'labelMedium': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'labelSmall': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'headline1': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'headline2': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'headline3': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'headline4': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'headline5': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'headline6': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'subtitle1': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'subtitle2': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'bodyText1': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'bodyText2': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'caption': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'button': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
      'overline': BridgeMethodDef(BridgeFunctionDef(returns: _atTextStyle)),
    },
    setters: {},
    fields: {},
    wrap: true);
