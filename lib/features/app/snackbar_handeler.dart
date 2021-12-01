import 'package:flutter/material.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';

class MessageHandler {
  MessageHandler();

  static var scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  static void showSnackBar({@required String? title}) {
    scaffoldMessengerKey.currentState!.hideCurrentSnackBar();
    scaffoldMessengerKey.currentState!.showSnackBar(SnackBar(
      content: Text(title!),
      backgroundColor: AppColors.primaryColor,
      duration: Duration(seconds: 3),
    ));
  }
}
