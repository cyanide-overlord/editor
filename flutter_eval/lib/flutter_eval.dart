library flutter_eval;

export 'src/flutter_eval.dart';
export 'package:flutter_eval_runtime/flutter_eval_runtime.dart';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_eval/src/animation.dart';
import 'package:flutter_eval/src/animation/curves.dart';
import 'package:flutter_eval/src/foundation.dart';
import 'package:flutter_eval/src/foundation/change_notifier.dart';
import 'package:flutter_eval/src/foundation/key.dart';
import 'package:flutter_eval/src/material.dart';
import 'package:flutter_eval/src/material/app.dart';
import 'package:flutter_eval/src/material/app_bar.dart';
import 'package:flutter_eval/src/material/colors.dart';
import 'package:flutter_eval/src/material/elevated_button.dart';
import 'package:flutter_eval/src/material/floating_action_button.dart';
import 'package:flutter_eval/src/material/scaffold.dart';
import 'package:flutter_eval/src/material/snack_bar.dart';
import 'package:flutter_eval/src/material/text_button.dart';
import 'package:flutter_eval/src/material/text_field.dart';
import 'package:flutter_eval/src/material/text_theme.dart';
import 'package:flutter_eval/src/material/theme.dart';
import 'package:flutter_eval/src/material/theme_data.dart';
import 'package:flutter_eval/src/painting.dart';
import 'package:flutter_eval/src/painting/alignment.dart';
import 'package:flutter_eval/src/painting/basic_types.dart';
import 'package:flutter_eval/src/painting/colors.dart';
import 'package:flutter_eval/src/painting/edge_insets.dart';
import 'package:flutter_eval/src/painting/text_style.dart';
import 'package:flutter_eval/src/rendering.dart';
import 'package:flutter_eval/src/rendering/box.dart';
import 'package:flutter_eval/src/rendering/flex.dart';
import 'package:flutter_eval/src/rendering/object.dart';
import 'package:flutter_eval/src/sky_engine/ui/geometry.dart';
import 'package:flutter_eval/src/sky_engine/ui/painting.dart';
import 'package:flutter_eval/src/sky_engine/ui/text.dart';
import 'package:flutter_eval/src/sky_engine/ui/ui.dart';
import 'package:flutter_eval/src/widgets.dart';
import 'package:flutter_eval/src/widgets/app.dart';
import 'package:flutter_eval/src/widgets/basic.dart';
import 'package:flutter_eval/src/widgets/container.dart';
import 'package:flutter_eval/src/widgets/editable_text.dart';
import 'package:flutter_eval/src/widgets/framework.dart';
import 'package:flutter_eval/src/widgets/navigator.dart';
import 'package:flutter_eval/src/widgets/text.dart';

/// Setup flutter_eval classes for use in a dart_eval [Compiler].
void setupFlutterForCompile(Compiler compiler) {
  final classes = [
    $WidgetDeclaration,
    $StatelessWidget$bridgeDeclaration,
    $StatefulWidget$bridgeDeclaration,
    $ChangeNotifier$bridgeDeclaration,
    $State$bridgeDeclaration,
    $BuildContextDeclaration,
    $TextDeclaration,
    $ContainerDeclaration,
    $KeyDeclaration,
    $ColorDeclaration,
    $EdgeInsetsGeometryDeclaration,
    $EdgeInsetsDeclaration,
    $ColorSwatchDeclaration,
    $WidgetsAppDeclaration,
    $MaterialAppDeclaration,
    $MaterialColorDeclaration,
    $MaterialAccentColorDeclaration,
    $ScaffoldDeclaration,
    $AppBarDeclaration,
    $PaddingDeclaration,
    $RowDeclaration,
    $CenterDeclaration,
    $ColumnDeclaration,
    $FloatingActionButtonDeclaration,
    $NavigatorDeclaration,
    $NavigatorStateDeclaration,
    $TextEditingControllerDeclaration,
    $TextFieldDeclaration,
    $ScaffoldMessengerDeclaration,
    $ScaffoldMessengerStateDeclaration,
    $SnackBarDeclaration,
    $TextStyleDeclaration,
    $TextThemeDeclaration,
    $TextButtonDeclaration,
    $ThemeDataDeclaration,
    $ThemeDeclaration,
    $ElevatedButtonDeclaration,
    $BuilderDeclaration,
    $AlignmentGeometryDeclaration,
    $AlignmentDeclaration,
    $ConstraintsDeclaration,
    $BoxConstraintsDeclaration,
    $ParametricCurveDeclaration,
    $CurveDeclaration,
    $_LinearDeclaration,
    $SawToothDeclaration,
    $IntervalDeclaration,
    $ThresholdDeclaration,
    $CubicDeclaration,
    $_DecelerateCurveDeclaration,
    $ElasticInCurveDeclaration,
    $ElasticOutCurveDeclaration,
    $ElasticInOutCurveDeclaration,
    $SizeDeclaration
  ];

  compiler.defineBridgeClasses(classes);

  compiler.defineBridgeEnum($MainAxisAlignmentDeclaration);
  compiler.defineBridgeEnum($CrossAxisAlignmentDeclaration);
  compiler.defineBridgeEnum($MainAxisSizeDeclaration);
  compiler.defineBridgeEnum($FontWeightDeclaration);
  compiler.defineBridgeEnum($FontStyleDeclaration);
  compiler.defineBridgeEnum($TextDirectionDeclaration);
  compiler.defineBridgeEnum($VerticalDirectionDeclaration);
  compiler.defineBridgeEnum($TextBaselineDeclaration);
  compiler.defineBridgeEnum($AxisDeclaration);

  compiler.addSource(DartSource('dart:ui', dartUiSource));

  compiler.addSource(DartSource('package:flutter/animation.dart', animationSource));
  compiler.addSource(DartSource('package:flutter/src/animation/curves.dart', animationCurvesSource));

  compiler.addSource(DartSource('package:flutter/foundation.dart', foundationSource));

  compiler.addSource(DartSource('package:flutter/material.dart', materialSource));
  compiler.addSource(DartSource('package:flutter/src/material/colors.dart', materialColorsSource));

  compiler.addSource(DartSource('package:flutter/painting.dart', paintingSource));
  compiler.addSource(DartSource('package:flutter/src/painting/basic_types.dart', paintingBasicTypesSource));

  compiler.addSource(DartSource('package:flutter/rendering.dart', renderingSource));

  compiler.addSource(DartSource('package:flutter/widgets.dart', widgetsSource));
  compiler.addSource(DartSource('package:flutter/src/widgets/framework.dart', widgetsFrameworkSource));
  compiler.addSource(DartSource('package:flutter/src/widgets/basic.dart', widgetsBasicSource));

  /*final outJson = json.encode({
    'classes': classes.map((c) => c.toJson()).toList(),
    'enums': [
      $MainAxisAlignment.$declaration.toJson(),
      $CrossAxisAlignment.$declaration.toJson(),
      $MainAxisSize.$declaration.toJson(),
      $FontWeight.$declaration.toJson(),
      $FontStyle.$declaration.toJson(),
      $TextDirection.$declaration.toJson(),
      $VerticalDirection.$declaration.toJson(),
      $TextBaseline.$declaration.toJson(),
      $Axis.$declaration.toJson()
    ],
    'sources': [
      {'uri': 'dart:ui', 'source': dartUiSource},
      {'uri': 'package:flutter/animation.dart', 'source': animationSource},
      {'uri': 'package:flutter/src/animation/curves.dart', 'source': animationCurvesSource},
      {'uri': 'package:flutter/foundation.dart', 'source': foundationSource},
      {'uri': 'package:flutter/material.dart', 'source': materialSource},
      {'uri': 'package:flutter/src/material/colors.dart', 'source': materialColorsSource},
      {'uri': 'package:flutter/painting.dart', 'source': paintingSource},
      {'uri': 'package:flutter/src/painting/basic_types.dart', 'source': paintingBasicTypesSource},
      {'uri': 'package:flutter/rendering.dart', 'source': renderingSource},
      {'uri': 'package:flutter/widgets.dart', 'source': widgetsSource},
      {'uri': 'package:flutter/src/widgets/framework.dart', 'source': widgetsFrameworkSource},
      {'uri': 'package:flutter/src/widgets/basic.dart', 'source': widgetsBasicSource}
    ]
  });

  File('flutter_eval.json').writeAsStringSync(outJson);*/
}
