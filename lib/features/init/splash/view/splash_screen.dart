import 'package:flutter/material.dart';
import 'package:fluttercommerce/features/app/res/app_assets.dart';
import 'package:fluttercommerce/features/app/state_manager/state_view_manager.dart';
import 'package:fluttercommerce/features/init/splash/view_model/splash_bloc.dart';
import 'package:fluttercommerce/features/init/splash/state/splash_state.dart';

class SplashScreen extends StateManagerWidget<SplashViewModel, SplashState> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  void initState(viewModel) {
    super.initState(viewModel);
    viewModel.startSplash();
  }

  @override
  void stateListener(BuildContext context, SplashState state) {
    super.stateListener(context, state);
  }

  @override
  Widget buildView(BuildContext context, SplashViewModel bloc, SplashState state) {
    return Scaffold(
      //  backgroundColor: AppColors.backGroundColor,
      body: Center(
        child: Image.asset(
          AppAssets.logo,
          height: 245,
          width: 245,
        ),
      ),
    );
  }
}
