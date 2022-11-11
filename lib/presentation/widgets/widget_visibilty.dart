import 'package:flutter/material.dart';

class WidgetVisibility extends StatelessWidget {
  const WidgetVisibility({Key? key, required this.visible, required this.child})
      : super(key: key);

  final bool visible;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return !visible ? Container() : child;
  }
}
