import 'dart:ui';

import 'package:flutter/material.dart';

import 'language_theme.dart';

EditorTheme testTheme = EditorTheme(
    backgroundColor: Colors.blueGrey.shade700,
    selectionColor: Colors.blueGrey.shade500,
    baseStyle: const TextStyle(color: Colors.white, fontFamily: 'Hack', fontWeight: FontWeight.w400, fontFeatures: [
      FontFeature('liga'),
      FontFeature('clig'),
      FontFeature('dlig'),
      FontFeature('hlig'),
      FontFeature('rlig')
    ]),
    languageThemes: {
      'undef': LanguageTheme({'undef': Colors.white}),
      /*'dart': LanguageTheme({
        'string.single': Colors.lightGreenAccent[100],
        'string.double': Colors.lightGreenAccent[100],
        'string.multiline': Colors.lightGreenAccent[100],
        'operator': Colors.cyanAccent[100],
        'number': Colors.orange[200],
        'accessmod': Colors.amber,
        'keyword': Colors.pink[100],
        'paren': Colors.limeAccent[100],
        'type': Colors.yellow[100]
      }),*/
      'json': LanguageTheme({
        'source.json': Colors.white,
        'constant.language.json': Colors.pink.shade200,
        'constant.numeric.float.decimal.json': Colors.orange.shade200,
        'constant.numeric.integer.decimal.json': Colors.orangeAccent.shade200,
        'string.quoted.double.json': Colors.lightGreenAccent.shade100,
        'punctuation.definition.string': Colors.lightGreenAccent.shade100,
        'punctuation.section.sequence': Colors.limeAccent.shade100,
        'punctuation.section.mapping': Colors.limeAccent.shade100,
      }),
      'protobuf': LanguageTheme({
        'keyword.other': Colors.pink.shade100,
        'storage.modifier.proto': Colors.lightBlueAccent.shade100,
        'storage.type.annotation.proto': Colors.pink.shade100,
        'storage.type.message.proto': Colors.pink.shade100,
        'storage.modifier.oneof.proto': Colors.pink.shade100,
        'punctuation.definition.block': Colors.limeAccent.shade100,
        'punctuation.definition.string': Colors.lightGreenAccent.shade100,
        'string.quoted.double.proto': Colors.lightGreenAccent.shade100,
        'variable.other.field.proto': Colors.white,
        'variable.namespace.proto': const Color(0xFFCCEEFF),
        'storage.type.proto variable.type.proto': const Color(0xFFCCEEFF),
        'support.type.proto': Colors.lightBlueAccent.shade100,
        'constant.numeric.proto': Colors.deepOrange.shade200,
        'keyword.operator.assignment.proto': Colors.blueGrey.shade100,
        'entity.name': const Color(0xFFCCEEFF),
      }),
      'sql': LanguageTheme({
        'keyword.other': Colors.pink.shade100,
        'storage.type.sql': Colors.lightBlueAccent.shade100,
        'constant.numeric.sql': Colors.deepOrange.shade200,
        'storage.modifier.sql': const Color(0xFFCCEEFF),
        'constant.boolean.sql': Colors.purple.shade200,
        'keyword.operator.logical.sql': Colors.pink.shade100,
        'support.function.scalar.sql': Colors.lightBlueAccent.shade100,
        'punctuation.definition.string.backtick': Colors.yellow.shade100,
        'punctuation.definition.string': Colors.lightGreenAccent.shade100,
        'string.regexp.sql': Colors.lightGreenAccent.shade100,
        'string.quoted.single.sql': Colors.lightGreenAccent.shade100,
        'string.quoted.double.sql': Colors.lightGreenAccent.shade100,
        'entity.name.function.sql': const Color(0xFFCCEEFF),
        'punctuation.section.scope': Colors.limeAccent.shade100,
        'variable.language.star.sql': Colors.lightBlueAccent.shade100,
        'string.quoted.other.backtick.sql': Colors.yellow.shade100,
        'constant.other': Colors.yellow.shade100,
        'keyword.operator.comparison.sql': Colors.orange.shade100
      }),
      'dart': LanguageTheme({
        'keyword': Colors.pink.shade100,
        'string': Colors.lightGreenAccent.shade100,
        'constant': Colors.orange.shade200,
        'support': Colors.yellow.shade200,
        'entity': const Color(0xFFAAE8FF),
        'storage': Colors.purple.shade100,
        'comment': Colors.blueGrey.shade100,
      }),
      'yaml': LanguageTheme({
        'keyword': Colors.pink.shade100,
        'string': Colors.lightGreenAccent.shade100,
        'constant': Colors.orange.shade200,
        'support': Colors.yellow.shade200,
        'entity': const Color(0xFFAAE8FF),
        'storage': Colors.purple.shade100,
        'comment': Colors.blueGrey.shade100,
        'meta': Colors.orange.shade100,
        'punctuation': Colors.limeAccent.shade100
      })
    });

class EditorTheme {
  EditorTheme(
      {required this.backgroundColor,
      required this.selectionColor,
      required this.baseStyle,
      required this.languageThemes,
      this.showLineNumbers = true});

  Color backgroundColor;
  Color selectionColor;
  TextStyle baseStyle;
  Map<String, LanguageTheme> languageThemes;
  bool showLineNumbers;
}
