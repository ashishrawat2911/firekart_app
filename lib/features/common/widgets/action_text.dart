import 'package:flutter/material.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';

class ActionText extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  ActionText(this.title, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return actionText();
  }

  TextStyle get actionTextStyle => TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.primaryColor);

  Widget actionText() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Text(
        "$title",
        style: actionTextStyle,
      ),
    );
  }
}
