import 'package:flutter/material.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';

class LineDashDivider extends StatelessWidget {
  final double height;
  final Color? color;

  const LineDashDivider({this.height = 1, this.color});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var boxWidth = constraints.constrainWidth();
        var dashWidth = 5.0;
        var dashHeight = height;
        var dashCount = (boxWidth / (2.7 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration:
                    BoxDecoration(color: color ?? AppColors.colorDEDEDE),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
