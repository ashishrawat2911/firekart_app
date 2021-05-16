import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttercommerce/src/res/app_assets.dart';
import 'package:fluttercommerce/src/routes/router.gr.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  Future<void> startTime() async {
    const _duration = Duration(milliseconds: 1500);
    Timer(_duration, navigationPage);
  }

  navigationPage() async {
    await Navigator.pushReplacementNamed(context, Routes.checkStatusScreen);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
