import 'package:flutter/material.dart';

typedef ModifyConstraintsCallback = void Function(Offset delta);

class InlineWindow extends StatefulWidget {
  const InlineWindow(
      {Key? key,
      required this.child,
      required this.header,
      required this.constraints,
      this.requestFocus = false,
      this.resizeRight = false,
      this.resizeLeft = false,
      this.resizeBottom = false,
      this.resizeTop = false,
      this.onCollapse,
      this.constraintsCallback})
      : super(key: key);

  final Widget child;
  final Widget header;
  final BoxConstraints constraints;
  final bool requestFocus;
  final bool resizeTop;
  final bool resizeLeft;
  final bool resizeRight;
  final bool resizeBottom;
  final VoidCallback? onCollapse;
  final ModifyConstraintsCallback? constraintsCallback;

  @override
  InlineWindowState createState() => InlineWindowState();

  static InlineWindowState? of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<_InlineWindow>())?.data;
  }
}

class InlineWindowState extends State<InlineWindow> {
  final FocusNode _focusNode = FocusNode(skipTraversal: true);
  int? clickDragPtr;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
    if (widget.requestFocus) {
      _focusNode.requestFocus();
    }
  }

  bool get hasFocus => _focusNode.hasFocus;

  /// Request focus
  void requestFocus() {
    FocusScope.of(context).requestFocus(_focusNode);
  }

  @override
  Widget build(BuildContext context) {
    final header = widget.onCollapse != null
        ? Row(
            children: [
              widget.header,
              Expanded(child: Container()),
              IconButton(
                icon: const Icon(Icons.minimize),
                onPressed: widget.onCollapse,
                padding: EdgeInsets.zero,
                iconSize: 18,
              )
            ],
          )
        : widget.header;
    return _InlineWindow(
      data: this,
      child: ConstrainedBox(
        constraints: widget.constraints,
        child: Stack(
          children: [
            GestureDetector(
                onTapDown: (_) {
                  if (!_focusNode.hasFocus) {
                    requestFocus();
                  }
                },
                behavior: HitTestBehavior.translucent,
                child: Column(children: [
                  Row(children: <Widget>[
                    Expanded(
                      child: Material(
                          color: _focusNode.hasFocus
                              ? Theme.of(context).canvasColor
                              : Theme.of(context).appBarTheme.backgroundColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                            child: header,
                          )),
                    ),
                  ]),
                  Expanded(child: widget.child)
                ])),
            if (widget.resizeLeft)
              ConstrainedBox(
                  constraints: const BoxConstraints(
                      minWidth: 3, maxWidth: 3, minHeight: double.infinity, maxHeight: double.infinity),
                  child: resizer()),
            if (widget.resizeRight)
              Row(
                children: [
                  Expanded(child: Container()),
                  ConstrainedBox(
                      constraints: const BoxConstraints(
                          minWidth: 3, maxWidth: 3, minHeight: double.infinity, maxHeight: double.infinity),
                      child: resizer()),
                ],
              ),
            if (widget.resizeTop)
              ConstrainedBox(
                  constraints: const BoxConstraints(
                      minWidth: double.infinity, maxWidth: double.infinity, minHeight: 3, maxHeight: 3),
                  child: resizer(true)),
          ],
        ),
      ),
    );
  }

  Widget resizer([bool vertical = false]) {
    return MouseRegion(
      cursor: vertical ? SystemMouseCursors.resizeUpDown : SystemMouseCursors.resizeLeftRight,
      child: Listener(
        onPointerDown: (evt) {
          clickDragPtr = evt.pointer;
        },
        onPointerMove: (evt) {
          if (evt.pointer == clickDragPtr) {
            widget.constraintsCallback?.call(vertical ? Offset(0, evt.delta.dy) : Offset(evt.delta.dx, 0));
          }
        },
        onPointerUp: (evt) {
          if (evt.pointer == clickDragPtr) {
            clickDragPtr = null;
          }
        },
        child: const ColoredBox(
          color: Colors.transparent,
        ),
      ),
    );
  }
}

/// Only has MyInheritedState as field.
class _InlineWindow extends InheritedWidget {
  final InlineWindowState data;

  const _InlineWindow({Key? key, required this.data, required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_InlineWindow old) {
    return true;
  }
}
