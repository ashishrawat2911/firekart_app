import 'package:flutter/material.dart';

class CommonAppLoader extends StatelessWidget {
  const CommonAppLoader({Key? key, this.size, this.strokeWidth = 4.0})
      : super(key: key);
  final double? size;

  final double strokeWidth;

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
