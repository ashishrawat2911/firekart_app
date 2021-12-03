import 'package:flutter/material.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';

class CommonCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final double? elevation;
  final VoidCallback? onTap;
  final Color? color;

  CommonCard(
      {required this.child, this.margin, this.borderRadius, this.elevation, this.padding, this.onTap, this.color})
      : assert(child != null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: color ?? AppColors.white,
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              //  spreadRadius: elevation ??
              //  Theme.of(context).cardTheme.elevation,
              spreadRadius: elevation ?? 0.1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
