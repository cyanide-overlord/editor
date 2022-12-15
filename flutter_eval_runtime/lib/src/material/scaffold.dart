import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:dart_eval_runtime/runtime_bridge.dart';
import 'package:flutter/material.dart';

class $Scaffold implements $Instance {
  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Scaffold.wrap(Scaffold(
      appBar: args[0]?.$value,
      body: args[1]?.$value,
      floatingActionButton: args[2]?.$value,
    ));
  }

  $Scaffold.wrap(this.$value);

  @override
  final Scaffold $value;

  @override
  get $reified => $value;

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

class $ScaffoldMessenger implements $Instance {
  $ScaffoldMessenger.wrap(this.$value);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ScaffoldMessenger.wrap(ScaffoldMessenger(
      child: args[0]!.$value,
    ));
  }

  static $Value? $of(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ScaffoldMessengerState.wrap(ScaffoldMessenger.of(args[0]!.$value));
  }

  @override
  final ScaffoldMessenger $value;

  @override
  get $reified => $value;

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

class $ScaffoldMessengerState implements $Instance {
  $ScaffoldMessengerState.wrap(this.$value);

  @override
  final ScaffoldMessengerState $value;

  @override
  get $reified => $value;

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
