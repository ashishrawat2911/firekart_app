/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({
    Key? key,
    required this.child,
    this.margin,
    this.borderRadius,
    this.elevation,
    this.padding,
    this.onTap,
    this.color,
  }) : super(key: key);
  final Widget child;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final double? elevation;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        padding: padding,
        child: Card(
          margin: margin,
          child: child,
        ),
      ),
    );
  }
}
