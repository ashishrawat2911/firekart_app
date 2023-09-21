/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

@singleton
class CrashlyticsService {
  final FirebaseCrashlytics _firebaseCrashlytics = FirebaseCrashlytics.instance;

  CrashlyticsService() {
    FlutterError.onError = recordFlutterError;
  }

  void recordFlutterError(FlutterErrorDetails details) {
    _firebaseCrashlytics.recordFlutterError(details);
  }

  void recordError(dynamic exception, StackTrace stack, {dynamic context}) {
    _firebaseCrashlytics.recordError(exception, stack);
  }
}
