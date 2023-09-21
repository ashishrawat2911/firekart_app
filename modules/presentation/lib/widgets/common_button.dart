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
import 'package:flutter/services.dart';

import 'package:assets/res/colors.gen.dart';
import 'dot_progress_indicator.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final double? elevation;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? titleColor;
  final FontWeight? fontWeight;
  final bool hasForwardIcon;
  final bool replaceWithIndicator;
  final bool isEnabled;
  final TextAlign? textAlign;
  final EdgeInsets? margin;

  const CommonButton({
    Key? key,
    required this.title,
    this.onTap,
    this.textStyle,
    this.buttonColor,
    this.titleColor,
    this.elevation,
    this.width,
    this.height,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
    this.hasForwardIcon = false,
    this.replaceWithIndicator = false,
    this.margin,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50,
      width: width,
      margin: margin,
      child: ElevatedButton(
        onPressed: (!replaceWithIndicator && isEnabled)
            ? () {
                if (onTap != null) {
                  HapticFeedback.lightImpact();
                  onTap!();
                }
              }
            : null,
        child: Center(
          child: hasForwardIcon
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buttonTitle(),
                    const SizedBox(
                      width: 6,
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: AppColors.white,
                      size: 20,
                    ),
                  ],
                )
              : replaceWithIndicator
                  ? const DotProgressIndicator(
                      color: AppColors.white,
                    )
                  : buttonTitle(),
        ),
      ),
    );
  }

  Widget buttonTitle() {
    return Text(
      title,
      textAlign: textAlign ?? textAlign,
      style: textStyle ??
          TextStyle(
            fontSize: fontSize ?? 17,
            color: titleColor ?? AppColors.white,
            fontWeight: fontWeight ?? FontWeight.w600,
          ),
    );
  }
}
