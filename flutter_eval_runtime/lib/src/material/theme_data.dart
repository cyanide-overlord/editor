import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:dart_eval_runtime/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval_runtime/src/material/text_theme.dart';
import 'package:flutter_eval_runtime/src/sky_engine/ui/painting.dart';

class $ThemeData implements $Instance {
  $ThemeData.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ThemeData.wrap(ThemeData(
      useMaterial3: args[0]?.$value,
      colorSchemeSeed: args[1]?.$value,
      primarySwatch: args[2]?.$value,
      primaryColor: args[3]?.$value,
      primaryColorLight: args[4]?.$value,
      primaryColorDark: args[5]?.$value,
      canvasColor: args[6]?.$value,
      scaffoldBackgroundColor: args[7]?.$value,
      bottomAppBarColor: args[8]?.$value,
      cardColor: args[9]?.$value,
      dividerColor: args[10]?.$value,
      highlightColor: args[11]?.$value,
      splashColor: args[12]?.$value,
      selectedRowColor: args[13]?.$value,
      unselectedWidgetColor: args[14]?.$value,
      disabledColor: args[15]?.$value,
      // ignore: deprecated_member_use
      buttonColor: args[16]?.$value,
      secondaryHeaderColor: args[17]?.$value,
      textTheme: args[18]?.$value,
      primaryTextTheme: args[19]?.$value,
    ));
  }

  @override
  final ThemeData $value;

  @override
  get $reified => $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'useMaterial3':
        return $bool($value.useMaterial3);
      case 'primaryColor':
        return $Color.wrap($value.primaryColor);
      case 'primaryColorLight':
        return $Color.wrap($value.primaryColorLight);
      case 'primaryColorDark':
        return $Color.wrap($value.primaryColorDark);
      case 'canvasColor':
        return $Color.wrap($value.canvasColor);
      case 'scaffoldBackgroundColor':
        return $Color.wrap($value.scaffoldBackgroundColor);
      case 'bottomAppBarColor':
        return $Color.wrap($value.bottomAppBarColor);
      case 'cardColor':
        return $Color.wrap($value.cardColor);
      case 'dividerColor':
        return $Color.wrap($value.dividerColor);
      case 'highlightColor':
        return $Color.wrap($value.highlightColor);
      case 'splashColor':
        return $Color.wrap($value.splashColor);
      case 'selectedRowColor':
        return $Color.wrap($value.selectedRowColor);
      case 'unselectedWidgetColor':
        return $Color.wrap($value.unselectedWidgetColor);
      case 'disabledColor':
        return $Color.wrap($value.disabledColor);
      case 'buttonColor':
        // ignore: deprecated_member_use
        return $Color.wrap($value.buttonColor);
      case 'secondaryHeaderColor':
        return $Color.wrap($value.secondaryHeaderColor);
      case 'textTheme':
        return $TextTheme.wrap($value.textTheme);
      case 'primaryTextTheme':
        return $TextTheme.wrap($value.primaryTextTheme);
    }
    throw UnimplementedError();
  }

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }
}
