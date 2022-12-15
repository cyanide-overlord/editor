import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:dart_eval_runtime/stdlib/core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_eval_runtime/src/sky_engine/ui/painting.dart';
import 'package:flutter_eval_runtime/src/sky_engine/ui/text.dart';

class $TextStyle implements $Instance {
  $TextStyle.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $TextStyle.wrap(TextStyle(
      inherit: args[0]!.$value,
      color: args[1]?.$value,
      backgroundColor: args[2]?.$value,
      fontSize: args[3]?.$value,
      fontWeight: args[4]?.$value,
      fontStyle: args[5]?.$value,
      letterSpacing: args[6]?.$value,
      wordSpacing: args[7]?.$value,
      // TODO textBaseline: args[8]?.$value,
      height: args[8]?.$value,
    ));
  }

  @override
  final TextStyle $value;

  @override
  get $reified => $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'inherit':
        return $bool($value.inherit);
      case 'color':
        final color = $value.color;
        return color == null ? const $null() : $Color.wrap(color);
      case 'backgroundColor':
        final backgroundColor = $value.backgroundColor;
        return backgroundColor == null ? const $null() : $Color.wrap(backgroundColor);
      case 'fontSize':
        final fontSize = $value.fontSize;
        return fontSize == null ? const $null() : $double(fontSize);
      case 'fontWeight':
        final fontWeight = $value.fontWeight;
        return fontWeight == null ? const $null() : $FontWeight.wrap(fontWeight);
      case 'fontStyle':
        final fontStyle = $value.fontStyle;
        return fontStyle == null ? const $null() : $FontStyle.wrap(fontStyle);
      case 'letterSpacing':
        final letterSpacing = $value.letterSpacing;
        return letterSpacing == null ? const $null() : $double(letterSpacing);
      case 'wordSpacing':
        final wordSpacing = $value.wordSpacing;
        return wordSpacing == null ? const $null() : $double(wordSpacing);
      /*case 'textBaseline':
        final textBaseline = $value.textBaseline;
        return textBaseline == null ? const $null() : $TextBaseline.wrap(textBaseline);*/
      case 'height':
        final height = $value.height;
        return height == null ? const $null() : $double(height);
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
