import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/app/firebase/crashlytics_service.dart';
import 'package:fluttercommerce/features/common/bloc/app_cubit_observer.dart';
import 'package:fluttercommerce/features/module_init.dart';

import 'features/app/view/app.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    ModuleInit.registerModules();
    BlocOverrides.runZoned(
      () {},
      blocObserver: MyBlocObserver(),
    );
    runApp(const App());
  }, (error, stack) {
    CrashlyticsService.recordError(error, stack);
  }, zoneSpecification: const ZoneSpecification());
}
