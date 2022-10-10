import 'package:flutter/material.dart';

import '../../../../core/state_manager/state_view_manager.dart';
import '../../../../res/app_assets.dart';
import '../state/splash_state.dart';
import '../view_model/splash_view_model.dart';

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
          child: Image.asset(
            AppAssets.logo,
            height: 245,
            width: 245,
          ),
        ),
      ),
    );
  }
}
