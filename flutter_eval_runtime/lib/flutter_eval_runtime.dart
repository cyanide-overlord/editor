library flutter_eval_runtime;

export 'src/flutter_eval_runtime.dart';

import 'package:dart_eval_runtime/dart_eval_runtime.dart';
import 'package:flutter_eval_runtime/src/animation/curves.dart';
import 'package:flutter_eval_runtime/src/foundation/change_notifier.dart';
import 'package:flutter_eval_runtime/src/material/app.dart';
import 'package:flutter_eval_runtime/src/material/app_bar.dart';
import 'package:flutter_eval_runtime/src/material/colors.dart';
import 'package:flutter_eval_runtime/src/material/elevated_button.dart';
import 'package:flutter_eval_runtime/src/material/floating_action_button.dart';
import 'package:flutter_eval_runtime/src/material/scaffold.dart';
import 'package:flutter_eval_runtime/src/material/snack_bar.dart';
import 'package:flutter_eval_runtime/src/material/text_button.dart';
import 'package:flutter_eval_runtime/src/material/text_field.dart';
import 'package:flutter_eval_runtime/src/material/text_theme.dart';
import 'package:flutter_eval_runtime/src/material/theme.dart';
import 'package:flutter_eval_runtime/src/material/theme_data.dart';
import 'package:flutter_eval_runtime/src/painting/alignment.dart';
import 'package:flutter_eval_runtime/src/painting/basic_types.dart';
import 'package:flutter_eval_runtime/src/painting/edge_insets.dart';
import 'package:flutter_eval_runtime/src/painting/text_style.dart';
import 'package:flutter_eval_runtime/src/rendering/box.dart';
import 'package:flutter_eval_runtime/src/rendering/flex.dart';
import 'package:flutter_eval_runtime/src/sky_engine/ui/geometry.dart';
import 'package:flutter_eval_runtime/src/sky_engine/ui/painting.dart';
import 'package:flutter_eval_runtime/src/sky_engine/ui/text.dart';
import 'package:flutter_eval_runtime/src/widgets/app.dart';
import 'package:flutter_eval_runtime/src/widgets/basic.dart';
import 'package:flutter_eval_runtime/src/widgets/container.dart';
import 'package:flutter_eval_runtime/src/widgets/editable_text.dart';
import 'package:flutter_eval_runtime/src/widgets/framework.dart';
import 'package:flutter_eval_runtime/src/widgets/navigator.dart';
import 'package:flutter_eval_runtime/src/widgets/text.dart';

/// Setup Flutter classes for use in a dart_eval [Runtime]. After
/// calling this function, you must call `runtime.setup()`.
void setupFlutterForRuntime(Runtime runtime) {
  runtime
    ..registerBridgeFunc('dart:ui', 'Color.', $Color.$new)
    ..registerBridgeFunc('dart:ui', 'Size.', $Size.$new)
    ..registerBridgeFunc(
        'package:flutter/src/foundation/change_notifier.dart', 'ChangeNotifier.', $ChangeNotifier$bridge.$new,
        isBridge: true)
    ..registerBridgeFunc('package:flutter/src/widgets/framework.dart', 'StatelessWidget.', $StatelessWidget$bridge.$new,
        isBridge: true)
    ..registerBridgeFunc('package:flutter/src/widgets/framework.dart', 'StatefulWidget.', $StatefulWidget$bridge.$new,
        isBridge: true)
    ..registerBridgeFunc('package:flutter/src/widgets/framework.dart', 'State.', $State$bridge.$new, isBridge: true)
    ..registerBridgeFunc('package:flutter/src/painting/alignment.dart', 'Alignment.', $Alignment.$new)
    ..registerBridgeFunc('package:flutter/src/painting/alignment.dart', 'Alignment.topLeft*g', $Alignment.$topLeft)
    ..registerBridgeFunc('package:flutter/src/painting/alignment.dart', 'Alignment.topCenter*g', $Alignment.$topCenter)
    ..registerBridgeFunc('package:flutter/src/painting/alignment.dart', 'Alignment.topRight*g', $Alignment.$topRight)
    ..registerBridgeFunc(
        'package:flutter/src/painting/alignment.dart', 'Alignment.centerLeft*g', $Alignment.$centerLeft)
    ..registerBridgeFunc('package:flutter/src/painting/alignment.dart', 'Alignment.center*g', $Alignment.$center)
    ..registerBridgeFunc(
        'package:flutter/src/painting/alignment.dart', 'Alignment.centerRight*g', $Alignment.$centerRight)
    ..registerBridgeFunc(
        'package:flutter/src/painting/alignment.dart', 'Alignment.bottomLeft*g', $Alignment.$bottomLeft)
    ..registerBridgeFunc(
        'package:flutter/src/painting/alignment.dart', 'Alignment.bottomCenter*g', $Alignment.$bottomCenter)
    ..registerBridgeFunc(
        'package:flutter/src/painting/alignment.dart', 'Alignment.bottomRight*g', $Alignment.$bottomRight)
    ..registerBridgeFunc('package:flutter/src/painting/edge_insets.dart', 'EdgeInsets.fromLTRB', $EdgeInsets.$fromLTRB)
    ..registerBridgeFunc('package:flutter/src/painting/edge_insets.dart', 'EdgeInsets.all', $EdgeInsets.$all)
    ..registerBridgeFunc('package:flutter/src/painting/text_style.dart', 'TextStyle.', $TextStyle.$new)
    ..registerBridgeFunc('package:flutter/src/animation/curves.dart', '_Linear._', $_Linear.$_)
    ..registerBridgeFunc('package:flutter/src/animation/curves.dart', 'SawTooth.', $SawTooth.$new)
    ..registerBridgeFunc('package:flutter/src/animation/curves.dart', 'Interval.', $Interval.$new)
    ..registerBridgeFunc('package:flutter/src/animation/curves.dart', 'Threshold.', $Threshold.$new)
    ..registerBridgeFunc('package:flutter/src/animation/curves.dart', 'Cubic.', $Cubic.$new)
    ..registerBridgeFunc('package:flutter/src/animation/curves.dart', '_DecelerateCurve._', $_DecelerateCurve.$_)
    ..registerBridgeFunc('package:flutter/src/animation/curves.dart', 'ElasticInCurve.', $ElasticInCurve.$new)
    ..registerBridgeFunc('package:flutter/src/animation/curves.dart', 'ElasticOutCurve.', $ElasticOutCurve.$new)
    ..registerBridgeFunc('package:flutter/src/animation/curves.dart', 'ElasticInOutCurve.', $ElasticInOutCurve.$new)
    ..registerBridgeFunc('package:flutter/src/rendering/box.dart', 'BoxConstraints.', $BoxConstraints.$new)
    ..registerBridgeFunc('package:flutter/src/rendering/box.dart', 'BoxConstraints.tightFor', $BoxConstraints.$tightFor)
    ..registerBridgeFunc(
        'package:flutter/src/rendering/box.dart', 'BoxConstraints.tightForFinite', $BoxConstraints.$tightForFinite)
    ..registerBridgeFunc('package:flutter/src/rendering/box.dart', 'BoxConstraints.expand', $BoxConstraints.$expand)
    ..registerBridgeFunc('package:flutter/src/widgets/app.dart', 'WidgetsApp.', $WidgetsApp.$new)
    ..registerBridgeFunc('package:flutter/src/widgets/basic.dart', 'Padding.', $Padding.$new)
    ..registerBridgeFunc('package:flutter/src/widgets/basic.dart', 'Column.', $Column.$new)
    ..registerBridgeFunc('package:flutter/src/widgets/basic.dart', 'Row.', $Row.$new)
    ..registerBridgeFunc('package:flutter/src/widgets/basic.dart', 'Center.', $Center.$new)
    ..registerBridgeFunc('package:flutter/src/widgets/basic.dart', 'Builder.', $Builder.$new)
    ..registerBridgeFunc('package:flutter/src/widgets/text.dart', 'Text.', $Text.$new)
    ..registerBridgeFunc('package:flutter/src/widgets/container.dart', 'Container.', $Container.$new)
    ..registerBridgeFunc(
        'package:flutter/src/widgets/editable_text.dart', 'TextEditingController.', $TextEditingController.$new)
    ..registerBridgeFunc('package:flutter/src/material/app.dart', 'MaterialApp.', $MaterialApp.$new)
    ..registerBridgeFunc('package:flutter/src/material/app_bar.dart', 'AppBar.', $AppBar.$new)
    ..registerBridgeFunc('package:flutter/src/material/colors.dart', 'MaterialColor.', $MaterialColor.$new)
    ..registerBridgeFunc('package:flutter/src/material/colors.dart', 'MaterialAccentColor.', $MaterialAccentColor.$new)
    ..registerBridgeFunc('package:flutter/src/material/elevated_button.dart', 'ElevatedButton.', $ElevatedButton.$new)
    ..registerBridgeFunc('package:flutter/src/material/scaffold.dart', 'Scaffold.', $Scaffold.$new)
    ..registerBridgeFunc('package:flutter/src/material/scaffold.dart', 'ScaffoldMessenger.', $ScaffoldMessenger.$new)
    ..registerBridgeFunc('package:flutter/src/material/scaffold.dart', 'ScaffoldMessenger.of', $ScaffoldMessenger.$of)
    ..registerBridgeFunc('package:flutter/src/material/snack_bar.dart', 'SnackBar.', $SnackBar.$new)
    ..registerBridgeFunc('package:flutter/src/material/text_button.dart', 'TextButton.', $TextButton.$new)
    ..registerBridgeFunc('package:flutter/src/material/text_field.dart', 'TextField.', $TextField.$new)
    ..registerBridgeFunc('package:flutter/src/material/text_theme.dart', 'TextTheme.', $TextTheme.$new)
    ..registerBridgeFunc('package:flutter/src/material/theme_data.dart', 'ThemeData.', $ThemeData.$new)
    ..registerBridgeFunc('package:flutter/src/material/theme.dart', 'Theme.of', $Theme.$of)
    ..registerBridgeFunc('package:flutter/src/material/theme.dart', 'Theme.', $Theme.$new)
    ..registerBridgeFunc(
        'package:flutter/src/material/floating_action_button.dart', 'FloatingActionButton.', $FloatingActionButton.$new)
    ..registerBridgeFunc('package:flutter/src/widgets/navigator.dart', 'Navigator.', $Navigator.$new)
    ..registerBridgeFunc('package:flutter/src/widgets/navigator.dart', 'Navigator.of', $Navigator.$of)
    ..registerBridgeEnumValues('dart:ui', 'FontWeight', $FontWeight.$values)
    ..registerBridgeEnumValues('dart:ui', 'FontStyle', $FontStyle.$values)
    ..registerBridgeEnumValues('dart:ui', 'TextDirection', $TextDirection.$values)
    ..registerBridgeEnumValues('dart:ui', 'TextBaseline', $TextBaseline.$values)
    ..registerBridgeEnumValues(
        'package:flutter/src/painting/basic_types.dart', 'VerticalDirection', $VerticalDirection.$values)
    ..registerBridgeEnumValues('package:flutter/src/painting/basic_types.dart', 'Axis', $Axis.$values)
    ..registerBridgeEnumValues('package:flutter/src/rendering/flex.dart', 'MainAxisSize', $MainAxisSize.$values)
    ..registerBridgeEnumValues(
        'package:flutter/src/rendering/flex.dart', 'MainAxisAlignment', $MainAxisAlignment.$values)
    ..registerBridgeEnumValues(
        'package:flutter/src/rendering/flex.dart', 'CrossAxisAlignment', $CrossAxisAlignment.$values);
}
