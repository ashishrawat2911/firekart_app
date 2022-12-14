import 'dart:async';

import 'package:core/di/di.dart';
import 'package:core/logger/app_logger.dart';
import 'package:core/state_manager/app_cubit_observer.dart';
import 'package:firebase_impl/crashlytics_service.dart';
import 'package:firebase_impl/firebase_impl.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'di/di.dart';

class Initializer {
  Initializer._();

  static void initialize(ValueChanged<Widget> onRun) async {
    WidgetsFlutterBinding.ensureInitialized();
    await initializeFirebase();
    await registerDependencies();
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
