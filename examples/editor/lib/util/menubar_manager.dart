import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:platformx/platformx.dart';

/// The root submenu categories
enum MenuCategory {
  /// For file and project related actions
  file,

  /// For edit related actions
  edit,

  /// For presentation and view related actions
  //view,

  /// For run and build related actions
  run,

  /// For windowing related actions
  //window,

  /// For help related actions
  help
}

/// The manager
class MenuBarManager {
  /// Returns the current instance of [MenuBarManager]
  factory MenuBarManager() {
    return _singleton;
  }

  MenuBarManager._internal();

  Map<MenuCategory, Map<String, List<MenuActionOrSubmenu>>> rootMenus = Map.fromEntries(MenuCategory.values.map((v) {
    return MapEntry(v, <String, List<MenuActionOrSubmenu>>{});
  }));

  bool hasChanged = false;

  /// Singleton
  static final MenuBarManager _singleton = MenuBarManager._internal();

  void setItem(MenuCategory category, String group, MenuActionOrSubmenu item) {
    hasChanged = true;
    if (!rootMenus[category]!.containsKey(group)) {
      rootMenus[category]![group] = <MenuActionOrSubmenu>[];
    }
    var ind = rootMenus[category]![group]!.indexOf(item);
    if (ind == -1)
      rootMenus[category]![group]!.add(item);
    else
      rootMenus[category]![group]![ind] = item;

    if (!_firstPublish) {
      _publish();
    }
  }

  bool updateItem(MenuCategory category, String group, String id,
      {String? title,
      void Function()? action,
      bool? enabled,
      List<MenuActionOrSubmenu>? submenu,
      MenuSerializableShortcut? shortcut}) {
    if (!rootMenus[category]!.containsKey(group)) return false;
    final MenuActionOrSubmenu ind;
    try {
      ind = rootMenus[category]![group]!.firstWhere((element) => element._id == id);
    } on StateError catch (_) {
      return false;
    }
    if (action != null && ind.action != action) {
      ind.action = action;
      hasChanged = true;
    }
    if (enabled != null && ind.enabled != enabled) {
      ind.enabled = enabled;
      hasChanged = true;
    }
    if (shortcut != null && ind.shortcut != shortcut) {
      ind.shortcut = shortcut;
      hasChanged = true;
    }
    if (submenu != null && ind.submenu != submenu) {
      ind.submenu = submenu;
      hasChanged = true;
    }
    if (title != null && ind.title != title) {
      ind.title = title;
      hasChanged = true;
    }
    return hasChanged;
  }

  bool _firstPublish = false;

  /// Forcefully publish the menu.
  void publish() {
    _publish();
    _firstPublish = true;
  }

  void _publish() {
    if (!hasChanged || (!PlatformX.isMacOS && !PlatformX.isLinux)) {
      return;
    }

    hasChanged = false;

    WidgetsBinding.instance.platformMenuDelegate.setMenus((rootMenus
        .map((name, menu) => MapEntry<MenuCategory, PlatformMenu>(
            name,
            PlatformMenu(
                label: name.toString().substring(13, 14).toUpperCase() + name.toString().substring(14),
                menus: menu.entries.expand((item) => [...item.value.map((l) => l.toApiMenu())]).toList())))
        .values
        .toList()));
  }
}

/// A menu item that can either contain an action or a submenu.
class MenuActionOrSubmenu with EquatableMixin {
  /// Create a new MenuActionOrSubmenu
  MenuActionOrSubmenu(this._id, this.title, {this.enabled = true, this.action, this.submenu, this.shortcut})
      : assert(action == null || submenu == null);

  String _id;
  String title;
  void Function()? action;
  bool enabled;
  List<MenuActionOrSubmenu>? submenu;
  MenuSerializableShortcut? shortcut;

  /// Convert to an API menu
  MenuItem toApiMenu() {
    if (action != null) {
      return PlatformMenuItem(label: title, onSelected: action, shortcut: shortcut);
    } else if (submenu != null) {
      return PlatformMenu(label: title, menus: submenu!.map((item) => item.toApiMenu()).toList());
    }
    throw Exception('No action or submenu $title $_id $action $submenu $shortcut');
  }

  @override
  List get props => [_id];
}
