import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/firetest.dart';
import 'package:fluttercommerce/src/app.dart';
import 'package:fluttercommerce/src/bloc/app_cubit_observer.dart';
import 'package:fluttercommerce/src/core/services/crashlytics_service.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    AppInjector.create();
    Bloc.observer = MyBlocObserver();
    Crashlytics.instance.enableInDevMode = false;
    FlutterError.onError = CrashlyticsService.recordFlutterError;
    runApp(App());
  }, (error, stack) {
    CrashlyticsService.recordError(error, stack);
  }, zoneSpecification: ZoneSpecification());
}
