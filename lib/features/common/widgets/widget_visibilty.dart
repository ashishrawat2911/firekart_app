import 'package:flutter/material.dart';

class WidgetVisibility extends StatelessWidget {
  WidgetVisibility({required this.visible, required this.child});

  final bool visible;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return !visible ? Container() : child;
  }
}
