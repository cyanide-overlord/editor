import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:flutter/widgets.dart';

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

class $Padding implements $Instance {
  const $Padding.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Padding.wrap(Padding(
      key: args[0]?.$value,
      padding: args[1]!.$value,
      child: args[2]?.$value,
    ));
  }

  @override
  final Padding $value;

  @override
  Padding get $reified => $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
  }

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }
}

class $Column implements $Instance {
  const $Column.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Column.wrap(Column(
      key: args[0]?.$value,
      mainAxisAlignment: args[1]?.$value ?? MainAxisAlignment.start,
      mainAxisSize: args[2]?.$value ?? MainAxisSize.max,
      crossAxisAlignment: args[3]?.$value ?? CrossAxisAlignment.center,
      verticalDirection: args[4]?.$value ?? VerticalDirection.down,
      textBaseline: args[5]?.$value,
      children: (args[6]?.$reified as List).cast(),
    ));
  }

  @override
  final Column $value;

  @override
  Column get $reified => $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
  }

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }
}

class $Row implements $Instance {
  const $Row.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Row.wrap(Row(
      key: args[0]?.$value,
      mainAxisAlignment: args[1]?.$value ?? MainAxisAlignment.start,
      mainAxisSize: args[2]?.$value ?? MainAxisSize.max,
      crossAxisAlignment: args[3]?.$value ?? CrossAxisAlignment.center,
      textDirection: args[4]?.$value,
      verticalDirection: args[5]?.$value ?? VerticalDirection.down,
      children: (args[6]?.$reified as List).cast(),
    ));
  }

  @override
  final Row $value;

  @override
  Row get $reified => $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
  }

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }
}

class $Center implements $Instance {
  const $Center.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Center.wrap(Center(
      key: args[0]?.$value,
      widthFactor: args[1]?.$value,
      heightFactor: args[2]?.$value,
      child: args[3]?.$value,
    ));
  }

  @override
  final Center $value;

  @override
  Center get $reified => $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
  }

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }
}

class $Builder implements $Instance {
  const $Builder.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Builder.wrap(Builder(
      key: args[0]?.$value,
      builder: args[1]?.$value,
    ));
  }

  @override
  final Builder $value;

  @override
  Builder get $reified => $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
  }

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }
}
