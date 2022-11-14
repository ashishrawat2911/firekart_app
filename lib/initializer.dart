import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttercommerce/app/app.dart';

import 'core/logger/app_logger.dart';
import 'core/services/crashlytics_service.dart';
import 'core/state_manager/app_cubit_observer.dart';
import 'di/di.dart';

class Initializer {
  Initializer._();

  static void initialize(ValueChanged<Widget> onRun) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    registerDependencies();
    runZonedGuarded(() {
      runStateObserver();
      onRun(const App());
    }, (error, stack) {
      AppLogger.log('App level error',
          logType: LogType.error, error: error, stackTrace: stack);
      inject<CrashlyticsService>().recordError(error, stack);
    }, zoneSpecification: const ZoneSpecification());
  }
}
