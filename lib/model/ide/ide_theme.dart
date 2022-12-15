import 'package:editor/ui/painting/color/color.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';

import 'theme_preset.dart';

/// A [Model] representing the current workspace
class IdeTheme extends Model {
  /// Constructs a default IdeTheme
  IdeTheme() {
    fromPreset(ThemePreset.DEFAULT);
  }

  /// Returns the nearest [IdeTheme] in the widget hierarchy
  static IdeTheme of(BuildContext context) => ScopedModel.of<IdeTheme>(context);

  late FlColor projectBrowserBackground;
  late FlColor termBackground;
  late FlColor windowHeader;
  late FlColor windowHeaderActive;
  late FlColor fileTreeSelectedFile;
  late FlColor text;
  late FlColor textActive;

  /// Update from a [ThemePreset]
  void fromPreset(ThemePreset preset) {
    projectBrowserBackground = FlColor.hex(preset.projectBrowserBackground);
    termBackground = FlColor.hex(preset.termBackground);
    windowHeader = FlColor.hex(preset.windowHeader);
    windowHeaderActive = FlColor.hex(preset.windowHeaderActive);
    fileTreeSelectedFile = FlColor.hex(preset.fileTreeSelectedFile);
    text = FlColor.hex(preset.text);
    textActive = FlColor.hex(preset.textActive);
    notifyListeners();
  }

  @override
  String toString() {
    return 'IdeTheme{projectBrowserBackground: $projectBrowserBackground, text: $text, textActive: $textActive}';
  }
}

// ignore_for_file: public_member_api_docs
