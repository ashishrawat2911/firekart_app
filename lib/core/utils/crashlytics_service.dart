import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/repo/auth_repository.dart';
import 'package:package_info/package_info.dart';

class CrashlyticsService {
  static recordFlutterError(FlutterErrorDetails details) {
    Crashlytics.instance.recordFlutterError(details);
    fullDeviceLog();
  }

  static recordError(dynamic exception, StackTrace stack, {dynamic context}) {
    Crashlytics.instance.recordError(exception, stack);
    // fullDeviceLog();
  }

  static fullDeviceLog() async {
    var authRepo = DI.container<AuthRepository>();
    var isLoggedIn = await authRepo.checkUserLoggedInStatus();
    String packageName = (await PackageInfo.fromPlatform()).packageName;
    StringBuffer stringBuffer = StringBuffer("");
    stringBuffer.write("Platform : $defaultTargetPlatform");
    stringBuffer.write("Package Name : $packageName");
    stringBuffer.write("Date of Error : ${DateTime.now()}");
    if (isLoggedIn) {
      var currentUser = await authRepo.getCurrentUser();
      stringBuffer.write("Name : ${currentUser.displayName}");
      stringBuffer.write("Phone Number : ${currentUser.phoneNumber}");
      stringBuffer.write("UID : ${currentUser.uid}");
    }
    Crashlytics.instance.log(stringBuffer.toString());
  }
}
