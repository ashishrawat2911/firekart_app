import 'dart:io';

import 'package:core/src/res/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageHandler {
  MessageHandler._();

  static var scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  static void showSnackBar({required String? title}) {
    scaffoldMessengerKey.currentState!.hideCurrentSnackBar();
    scaffoldMessengerKey.currentState!.showSnackBar(SnackBar(
      content: Text(title!),
      backgroundColor: AppColors.primaryColor,
      duration: const Duration(seconds: 3),
    ));
  }

  /// Creates an Android material alert dialogue and displays it to the user.
  /// The dialogue will return a boolean representing whether the success action was
  /// chosen or the cancel action.
  static Future<bool?> showNativeAlert({
    required BuildContext context,
    required String title,
    required String content,
    required String defaultActionText,
    String? cancelActionText,
  }) {
    if (Platform.isAndroid) {
      return _showAndroidAlert(
        context: context,
        title: title,
        content: content,
        defaultActionText: defaultActionText,
        cancelActionText: cancelActionText,
      );
    } else if (Platform.isIOS) {
      return _showIosAlert(
        context: context,
        title: title,
        content: content,
        defaultActionText: defaultActionText,
        cancelActionText: cancelActionText,
      );
    } else {
      throw Exception('Platform is not supported. Please only run on iOS or Android devices.');
    }
  }
}

Future<bool?> _showAndroidAlert({
  required BuildContext context,
  required String title,
  required String content,
  required String defaultActionText,
  String? cancelActionText,
}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        if (cancelActionText != null)
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(cancelActionText),
          ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(defaultActionText),
        ),
      ],
    ),
  );
}

Future<bool?> _showIosAlert(
    {required BuildContext context,
    required String title,
    required String content,
    required String defaultActionText,
    String? cancelActionText}) {
  return showCupertinoDialog<bool>(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        if (cancelActionText != null)
          CupertinoDialogAction(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(cancelActionText),
          ),
        CupertinoDialogAction(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(defaultActionText),
        ),
      ],
    ),
  );
}
