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
import 'package:localization/localization.dart';

import 'package:flutter/material.dart';
import 'package:assets/res/app_theme.dart';

import 'package:assets/res/colors.gen.dart';

class CommonViewCartOverlay extends StatelessWidget {
  const CommonViewCartOverlay({Key? key, required this.args}) : super(key: key);

  final CommonViewCartOverlayArgs args;

  @override
  Widget build(BuildContext context) => AnimatedCrossFade(
        duration: const Duration(microseconds: 3000),
        firstChild: Container(
          height: 50,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                args.title,
                style: context.textTheme.titleSmall,
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: args.onCartTap,
                child: Row(
                  children: <Widget>[
                    const Icon(Icons.shopping_cart, color: AppColors.white),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      Localization.value.viewCart,
                      style: context.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        secondChild: const SizedBox(),
        crossFadeState: args.isCartEmpty
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
      );
}

class CommonViewCartOverlayArgs {
  String title;
  bool isCartEmpty;
  VoidCallback? onCartTap;

  CommonViewCartOverlayArgs({
    required this.title,
    required this.isCartEmpty,
    this.onCartTap,
  });
}
