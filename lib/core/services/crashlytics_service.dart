import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttercommerce/domain/usecases/get_user_data_status_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info/package_info.dart';

import '../../data/service/firebase_service.dart';

@singleton
class CrashlyticsService {
  final GetUserDataStatusUseCase _getUserDataStatusUseCase;
  final FirebaseCrashlytics _firebaseCrashlytics;

  CrashlyticsService(this._getUserDataStatusUseCase, this._firebaseManager, this._firebaseCrashlytics) {
    FlutterError.onError = recordFlutterError;
  }

  final FirebaseService _firebaseManager;

  void recordFlutterError(FlutterErrorDetails details) {
    _firebaseCrashlytics.recordFlutterError(details);
    fullDeviceLog();
  }

  void recordError(dynamic exception, StackTrace stack, {dynamic context}) {
    _firebaseCrashlytics.recordError(exception, stack);
    fullDeviceLog();
  }

  Future<void> fullDeviceLog() async {
    final isLoggedIn = await _getUserDataStatusUseCase.execute();
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
    _firebaseCrashlytics.log(stringBuffer.toString());
  }
}
