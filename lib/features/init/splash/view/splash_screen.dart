import 'package:flutter/material.dart';
import 'package:core/src/state_manager/state_view_manager.dart';
import 'package:core/src/res/app_assets.dart';
import 'package:fluttercommerce/features/init/splash/state/splash_state.dart';
import 'package:fluttercommerce/features/init/splash/view_model/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateBuilder<SplashViewModel, SplashState>(
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
