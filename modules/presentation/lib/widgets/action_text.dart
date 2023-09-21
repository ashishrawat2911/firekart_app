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
import 'package:assets/res/colors.gen.dart';
import 'package:flutter/material.dart';

class ActionText extends StatelessWidget {
  const ActionText(this.title, {Key? key, this.onTap}) : super(key: key);
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return actionText();
  }

  TextStyle get actionTextStyle => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: AppColors.primaryColor,
      );

  Widget actionText() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Text(
        title,
        style: actionTextStyle,
      ),
    );
  }
}
