/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:fluttercommerce/core/state_manager/base_view.dart';
import 'package:fluttercommerce/presentation/res/assets.gen.dart';

import '../state/splash_state.dart';
import '../view_model/splash_view_model.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel, SplashState>(
      onViewModelReady: (viewModel) {
        viewModel.startSplash();
      },
      builder: (context, viewModel, state) => Scaffold(
        //  backgroundColor: AppColors.backGroundColor,
        body: Center(
          child: AppAssets.images_app_logo.image(
            height: 245,
            width: 245,
          ),
        ),
      ),
    );
  }
}
