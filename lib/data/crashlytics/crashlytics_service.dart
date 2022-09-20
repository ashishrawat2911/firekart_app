import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info/package_info.dart';

import '../firebase_manager/firestore_manager.dart';

class CrashlyticsService {
  CrashlyticsService(this._firebaseManager) {
    FlutterError.onError = recordFlutterError;
  }

  final FirebaseRepository _firebaseManager;

  void recordFlutterError(FlutterErrorDetails details) {
    FirebaseCrashlytics.instance.recordFlutterError(details);
    fullDeviceLog();
  }

  void recordError(dynamic exception, StackTrace stack, {dynamic context}) {
    FirebaseCrashlytics.instance.recordError(exception, stack);
    fullDeviceLog();
  }

  Future<void> fullDeviceLog() async {
    final isLoggedIn = await _firebaseManager.checkUserLoggedInStatus();
    final String packageName = (await PackageInfo.fromPlatform()).packageName;
    final StringBuffer stringBuffer = StringBuffer("");
    stringBuffer.write("Platform : $defaultTargetPlatform");
    stringBuffer.write("Package Name : $packageName");
    stringBuffer.write("Date of Error : ${DateTime.now()}");
    if (isLoggedIn) {
      final currentUser = _firebaseManager.getCurrentUser();
      stringBuffer.write("Name : ${currentUser!.displayName!}");
      stringBuffer.write("Phone Number : ${currentUser.phoneNumber}");
      stringBuffer.write("UID : ${currentUser.uid}");
    }
    FirebaseCrashlytics.instance.log(stringBuffer.toString());
  }
}
