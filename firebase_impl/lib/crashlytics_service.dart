import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@singleton
class CrashlyticsService {
  final FirebaseCrashlytics _firebaseCrashlytics;

  CrashlyticsService(this._firebaseCrashlytics) {
    FlutterError.onError = recordFlutterError;
  }

  void recordFlutterError(FlutterErrorDetails details) {
    _firebaseCrashlytics.recordFlutterError(details);
  }

  void recordError(dynamic exception, StackTrace stack, {dynamic context}) {
    _firebaseCrashlytics.recordError(exception, stack);
  }
}
