import 'package:editor/model/ide/project.dart';
import 'package:editor/util/menubar_manager.dart';
import 'package:file_selector/file_selector.dart' as file_selector;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platformx/platformx.dart';

void setupBaseMenus(BuildContext context) {
  final opKey = PlatformX.isWindows ? LogicalKeyboardKey.control : LogicalKeyboardKey.meta;
  final ctrl = PlatformX.isWindows || PlatformX.isWeb;
  final meta = !ctrl;
  MenuBarManager()
    ..setItem(
        MenuCategory.file,
        'open',
        MenuActionOrSubmenu('new_project', 'New Project', action: () {
          file_selector.getDirectoryPath(confirmButtonText: 'Open').then(print);
        }, shortcut: SingleActivator(LogicalKeyboardKey.keyN, shift: true, control: ctrl, meta: meta)))
    ..setItem(
        MenuCategory.edit,
        'analyze',
        MenuActionOrSubmenu('analyze', 'Analyze', action: () {
          // DartAnalyzer().flutterFileInfo('${Project.of(context).rootFolder}/lib/main.dart').then(print);
        }, shortcut: SingleActivator(LogicalKeyboardKey.keyP, control: ctrl, meta: meta)))
    ..setItem(
        MenuCategory.file,
        'open',
        MenuActionOrSubmenu('open', 'Open', action: () {
          file_selector.getDirectoryPath(confirmButtonText: 'Open').then((res) {
            if (res != null) {
              Project.of(context).rootFolder = res;

              /*final interface = PluginInterface(context);
              for (final plugin in Plugin.allPlugins) {
                plugin.onNewRootFolder(interface);
              }*/
            }
          });
        }, shortcut: SingleActivator(LogicalKeyboardKey.keyO, control: ctrl, meta: meta)))
    ..setItem(
        MenuCategory.file,
        'save',
        MenuActionOrSubmenu('save', 'Save',
            action: () {},
            shortcut: SingleActivator(LogicalKeyboardKey.keyS, control: ctrl, meta: meta),
            enabled: false))
    ..setItem(
        MenuCategory.edit,
        'undo',
        MenuActionOrSubmenu('undo', 'Undo',
            enabled: false,
            action: () {},
            shortcut: SingleActivator(LogicalKeyboardKey.keyZ, control: ctrl, meta: meta)))
    ..setItem(
        MenuCategory.edit,
        'undo',
        MenuActionOrSubmenu('redo', 'Redo',
            action: () {},
            enabled: false,
            shortcut: SingleActivator(LogicalKeyboardKey.keyZ, control: ctrl, shift: true, meta: meta)))
    ..setItem(
        MenuCategory.edit,
        'clipboard',
        MenuActionOrSubmenu('cut', 'Cut',
            enabled: false,
            action: () {},
            shortcut: SingleActivator(LogicalKeyboardKey.keyX, control: ctrl, meta: meta)))
    ..setItem(
        MenuCategory.edit,
        'clipboard',
        MenuActionOrSubmenu('copy', 'Copy',
            enabled: false,
            action: () {},
            shortcut: SingleActivator(LogicalKeyboardKey.keyC, control: ctrl, meta: meta)))
    ..setItem(
        MenuCategory.edit,
        'clipboard',
        MenuActionOrSubmenu('paste', 'Paste',
            enabled: false,
            action: () {},
            shortcut: SingleActivator(LogicalKeyboardKey.keyV, control: ctrl, meta: meta)))
    ..setItem(
        MenuCategory.edit,
        'format',
        MenuActionOrSubmenu('reformat', 'Reformat Code',
            enabled: false,
            action: () {},
            shortcut: SingleActivator(LogicalKeyboardKey.keyP, control: ctrl, alt: true, meta: meta)))
    ..setItem(
        MenuCategory.edit,
        'find',
        MenuActionOrSubmenu('find', 'Find',
            enabled: false,
            action: () {},
            shortcut: SingleActivator(LogicalKeyboardKey.keyF, control: ctrl, meta: meta)))
    ..setItem(
        MenuCategory.edit,
        'find',
        MenuActionOrSubmenu('replace', 'Replace',
            action: () {}, shortcut: SingleActivator(LogicalKeyboardKey.keyR, control: ctrl, meta: meta)))
    ..publish();
}
