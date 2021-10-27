import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/modules/init/bloc/splash_bloc.dart';
import 'package:fluttercommerce/modules/init/state/splash_state.dart';
import 'package:fluttercommerce/res/app_assets.dart';
import 'package:fluttercommerce/routes/router.gr.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var splashBloc = DI.container<SplashBloc>();

  @override
  void initState() {
    super.initState();
    splashBloc.startSplash();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      cubit: splashBloc,
      listener: (context, state) async {
        if (state is SplashSuccessState) {
          await Navigator.pushReplacementNamed(
              context, Routes.checkStatusScreen);
        }
      },
      builder: (context, state) => SizedBox(
        //color: AppColors.backGroundColor,
        child: Scaffold(
          //  backgroundColor: AppColors.backGroundColor,
          body: Center(
            child: Image.asset(
              AppAssets.logo,
              height: 245,
              width: 245,
            ),
          ),
        ),
      ),
    );
  }
}
