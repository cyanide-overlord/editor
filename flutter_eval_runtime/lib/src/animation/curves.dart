import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:dart_eval_runtime/stdlib/core.dart';
import 'package:flutter/animation.dart';

const animationCurvesSource = '''
class Curves {
  Curves._();
  static const Curve linear = _Linear._();
  static const Curve decelerate = _DecelerateCurve._();
  static const Cubic fastLinearToSlowEaseIn = Cubic(0.18, 1.0, 0.04, 1.0);
  static const Cubic ease = Cubic(0.25, 0.1, 0.25, 1.0);
  static const Cubic easeIn = Cubic(0.42, 0.0, 1.0, 1.0);
  static const Cubic easeInToLinear = Cubic(0.67, 0.03, 0.65, 0.09);
  static const Cubic easeInSine = Cubic(0.47, 0.0, 0.745, 0.715);
  static const Cubic easeInQuad = Cubic(0.55, 0.085, 0.68, 0.53);
  static const Cubic easeInCubic = Cubic(0.55, 0.055, 0.675, 0.19);
  static const Cubic easeInQuart = Cubic(0.895, 0.03, 0.685, 0.22);
  static const Cubic easeInQuint = Cubic(0.755, 0.05, 0.855, 0.06);
  static const Cubic easeInExpo = Cubic(0.95, 0.05, 0.795, 0.035);
  static const Cubic easeInCirc = Cubic(0.6, 0.04, 0.98, 0.335);
  static const Cubic easeInBack = Cubic(0.6, -0.28, 0.735, 0.045);
  static const Cubic easeOut = Cubic(0.0, 0.0, 0.58, 1.0);
  static const Cubic linearToEaseOut = Cubic(0.35, 0.91, 0.33, 0.97);
  static const Cubic easeOutSine = Cubic(0.39, 0.575, 0.565, 1.0);
  static const Cubic easeOutQuad = Cubic(0.25, 0.46, 0.45, 0.94);
  static const Cubic easeOutCubic = Cubic(0.215, 0.61, 0.355, 1.0);
  static const Cubic easeOutQuart = Cubic(0.165, 0.84, 0.44, 1.0);
  static const Cubic easeOutQuint = Cubic(0.23, 1.0, 0.32, 1.0);
  static const Cubic easeOutExpo = Cubic(0.19, 1.0, 0.22, 1.0);
  static const Cubic easeOutCirc = Cubic(0.075, 0.82, 0.165, 1.0);
  static const Cubic easeOutBack = Cubic(0.175, 0.885, 0.32, 1.275);
  static const Cubic easeInOut = Cubic(0.42, 0.0, 0.58, 1.0);
  static const Cubic easeInOutSine = Cubic(0.445, 0.05, 0.55, 0.95);
  static const Cubic easeInOutQuad = Cubic(0.455, 0.03, 0.515, 0.955);
  static const Cubic easeInOutCubic = Cubic(0.645, 0.045, 0.355, 1.0);
  /*
  static const ThreePointCubic easeInOutCubicEmphasized = ThreePointCubic(
      Offset(0.05, 0), Offset(0.133333, 0.06),
      Offset(0.166666, 0.4),
      Offset(0.208333, 0.82), Offset(0.25, 1),
  );
  */
  static const Cubic easeInOutQuart = Cubic(0.77, 0.0, 0.175, 1.0);
  static const Cubic easeInOutQuint = Cubic(0.86, 0.0, 0.07, 1.0);
  static const Cubic easeInOutExpo = Cubic(1.0, 0.0, 0.0, 1.0);
  static const Cubic easeInOutCirc = Cubic(0.785, 0.135, 0.15, 0.86);
  static const Cubic easeInOutBack = Cubic(0.68, -0.55, 0.265, 1.55);

  static const Cubic fastOutSlowIn = Cubic(0.4, 0.0, 0.2, 1.0);
  static const Cubic slowMiddle = Cubic(0.15, 0.85, 0.85, 0.15);

  static const ElasticInCurve elasticIn = ElasticInCurve();
  static const ElasticOutCurve elasticOut = ElasticOutCurve();
  static const ElasticInOutCurve elasticInOut = ElasticInOutCurve();
}
''';

class $ParametricCurve implements $Instance {
  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
  }

  @override
  get $reified => throw UnimplementedError();

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }

  @override
  get $value => throw UnimplementedError();
}

/// dart_eval wrapper for [Curve]
class $Curve implements $Instance {
  @override
  final Curve $value;

  $Curve.wrap(this.$value) : _superclass = $Object($value);

  final $Instance _superclass;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'transform':
        return $Function(((runtime, target, args) => $double($value.transform(args[0]!.$value as double))));
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }
}

class $_Linear implements $Instance {
  @override
  final Curve $value;

  $_Linear.wrap(this.$value) : _superclass = $Curve.wrap($value);

  final $Curve _superclass;

  static $Value? $_(Runtime runtime, $Value? target, List<$Value?> args) {
    return $_Linear.wrap(Curves.linear);
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

class $SawTooth implements $Instance {
  @override
  final SawTooth $value;

  $SawTooth.wrap(this.$value) : _superclass = $Curve.wrap($value);

  final $Curve _superclass;

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $SawTooth.wrap(SawTooth(args[0]!.$value as int));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

class $Interval implements $Instance {
  @override
  final Interval $value;

  $Interval.wrap(this.$value) : _superclass = $Curve.wrap($value);

  final $Curve _superclass;

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Interval
        .wrap(Interval(args[0]!.$value as double, args[1]!.$value as double, curve: args[2]?.$value ?? Curves.linear));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

class $Threshold implements $Instance {
  @override
  final Threshold $value;

  $Threshold.wrap(this.$value) : _superclass = $Curve.wrap($value);

  final $Curve _superclass;

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Threshold.wrap(Threshold(args[0]!.$value as double));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

class $Cubic implements $Instance {
  @override
  final Cubic $value;

  $Cubic.wrap(this.$value) : _superclass = $Curve.wrap($value);

  final $Curve _superclass;

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Cubic.wrap(Cubic(
        args[0]!.$value as double, args[1]!.$value as double, args[2]!.$value as double, args[3]!.$value as double));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

class $_DecelerateCurve implements $Instance {
  @override
  final Curve $value;

  $_DecelerateCurve.wrap(this.$value) : _superclass = $Curve.wrap($value);

  final $Curve _superclass;

  static $Value? $_(Runtime runtime, $Value? target, List<$Value?> args) {
    return $_DecelerateCurve.wrap(Curves.decelerate);
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

class $ElasticInCurve implements $Instance {
  @override
  final ElasticInCurve $value;

  $ElasticInCurve.wrap(this.$value) : _superclass = $Curve.wrap($value);

  final $Curve _superclass;

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ElasticInCurve.wrap(ElasticInCurve(args[0]?.$value ?? 0.4));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

class $ElasticOutCurve implements $Instance {
  @override
  final ElasticOutCurve $value;

  $ElasticOutCurve.wrap(this.$value) : _superclass = $Curve.wrap($value);

  final $Curve _superclass;

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ElasticOutCurve.wrap(ElasticOutCurve(args[0]?.$value ?? 0.4));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

class $ElasticInOutCurve implements $Instance {
  @override
  final ElasticInOutCurve $value;

  $ElasticInOutCurve.wrap(this.$value) : _superclass = $Curve.wrap($value);

  final $Curve _superclass;

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ElasticInOutCurve.wrap(ElasticInOutCurve(args[0]?.$value ?? 0.4));
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  get $reified => $value;

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
