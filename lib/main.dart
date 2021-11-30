import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/crashlytics_service.dart';
import 'package:fluttercommerce/features/common/bloc/app_cubit_observer.dart';
import 'package:fluttercommerce/features/module_init.dart';

import 'features/app/view/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  ModuleInit.registerModules();
  runZonedGuarded(() {
    BlocOverrides.runZoned(
      () {},
      blocObserver: MyBlocObserver(),
    );
    runApp(const App());
  }, (error, stack) {
    DI.container<CrashlyticsService>().recordError(error, stack);
  }, zoneSpecification: const ZoneSpecification());
}
