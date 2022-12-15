import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// dart_eval wrapper for [Container]
class $Container implements Container, $Instance {
  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Container.wrap(Container(
      key: args[0]?.$value,
      alignment: args[1]?.$value,
      padding: args[2]?.$value,
      color: args[3]?.$value,
      width: args[4]?.$value,
      height: args[5]?.$value,
      constraints: args[6]?.$value,
      margin: args[7]?.$value,
      transformAlignment: args[8]?.$value,
      child: args[9]?.$value,
    ));
  }

  /// Wrap a [Container] for use in the dart_eval VM
  $Container.wrap(this.$value);

  /// The underlying [Container] value for this wrapper
  @override
  final Container $value;

  /// The underlying [Container] value for this wrapper
  @override
  Container get $reified => $value;

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

  @override
  EdgeInsetsGeometry? get margin => $value.margin;

  @override
  EdgeInsetsGeometry? get padding => $value.padding;

  @override
  AlignmentGeometry? get alignment => $value.alignment;

  @override
  Clip get clipBehavior => $value.clipBehavior;

  @override
  Color? get color => $value.color;

  @override
  BoxConstraints? get constraints => $value.constraints;

  @override
  Decoration? get decoration => $value.decoration;

  @override
  Decoration? get foregroundDecoration => $value.foregroundDecoration;

  @override
  Matrix4? get transform => $value.transform;

  @override
  AlignmentGeometry? get transformAlignment => $value.transformAlignment;

  @override
  Widget? get child => $value.child;

  @override
  Widget build(BuildContext context) => $value.build(context);

  @override
  StatelessElement createElement() => $value.createElement();

  @override
  List<DiagnosticsNode> debugDescribeChildren() => $value.debugDescribeChildren();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) => $value.debugFillProperties(properties);

  @override
  Key? get key => $value.key;

  @override
  DiagnosticsNode toDiagnosticsNode({String? name, DiagnosticsTreeStyle? style}) =>
      $value.toDiagnosticsNode(name: name, style: style);

  @override
  String toStringDeep(
          {String prefixLineOne = '', String? prefixOtherLines, DiagnosticLevel minLevel = DiagnosticLevel.debug}) =>
      $value.toStringDeep(prefixLineOne: prefixLineOne, prefixOtherLines: prefixOtherLines, minLevel: minLevel);

  @override
  String toStringShallow({String joiner = ', ', DiagnosticLevel minLevel = DiagnosticLevel.debug}) =>
      $value.toStringShallow(joiner: joiner, minLevel: minLevel);

  @override
  String toStringShort() => $value.toStringShort();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) => $value.toString(minLevel: minLevel);
}
