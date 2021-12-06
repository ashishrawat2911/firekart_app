import 'package:flutter/material.dart';
import 'package:fluttercommerce/features/app/res/app_assets.dart';
import 'package:fluttercommerce/features/app/view/base_screen.dart';
import 'package:fluttercommerce/features/init/bloc/splash_bloc.dart';
import 'package:fluttercommerce/features/init/state/splash_state.dart';

class SplashScreen extends BaseScreen<SplashBloc, SplashState> {
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
  Widget buildView(BuildContext context, SplashBloc bloc, SplashState state) {
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
