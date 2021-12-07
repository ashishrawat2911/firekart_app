import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttercommerce/core/utils/connectivity.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

typedef _onConnectionChanged = void Function(bool value);
mixin BaseScreenMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  bool isOffline = false;
  var connectionStatus = ConnectionStatus.getInstance();

  Future<bool> isNetworkConnected() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } on SocketException catch (_) {
      return false;
    }
  }

  showSnackBar({@required String? title}) {
    scaffoldKey.currentState!.hideCurrentSnackBar();
    scaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text(title!),
      backgroundColor: AppColors.primaryColor,
      duration: Duration(milliseconds: 1000),
    ));
  }

  showToast(String msg, BuildContext context,
      {int duration = 1,
      int gravity = 0,
      double backgroundRadius = 20,
      Border? border}) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.white,
      textColor: AppColors.black,
      fontSize: 14.0,
    );
  }

  void onConnectionChange(_onConnectionChanged connectionChanged) {
    connectionStatus.initialize();
    connectionStatus.connectionChange.listen((bool value) {
      connectionChanged(value);
    });
  }
}
