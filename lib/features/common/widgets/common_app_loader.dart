import 'package:flutter/material.dart';

class CommonAppLoader extends StatelessWidget {
  final double? size;
  final double strokeWidth;

  CommonAppLoader({this.size, this.strokeWidth = 4.0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
      ),
    );
//    return DotProgressIndicator(
//      color: color ?? AppColors.primaryColor,
//    );
  }
}
