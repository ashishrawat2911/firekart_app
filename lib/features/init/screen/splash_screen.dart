import 'package:flutter/material.dart';
import 'package:fluttercommerce/features/app/view/base_screen.dart';
import 'package:fluttercommerce/features/init/bloc/splash_bloc.dart';
import 'package:fluttercommerce/features/init/state/splash_state.dart';
import 'package:fluttercommerce/features/app/res/app_assets.dart';
import 'package:fluttercommerce/features/app/routes/router.gr.dart';

class SplashScreen extends BaseScreen<SplashBloc, SplashState> {
  SplashScreen({Key? key}) : super(key: key);

  @override
  void initState(SplashBloc bloc) {
    super.initState(bloc);
    bloc.startSplash();
  }

  @override
  void listener(BuildContext context, SplashState state) {
    super.listener(context, state);
    if (state is SplashSuccessState) {
      Navigator.pushReplacementNamed(context, CheckStatusScreenRoute.name);
    }
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
