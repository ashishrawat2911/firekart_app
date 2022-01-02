import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:fluttercommerce/initializer.dart';
import 'package:network/network.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Initializer.registerModules();
  runZonedGuarded(() {
    runStateObserver();
    runApp(const App());
  }, (error, stack) {
    DI.container<CrashlyticsService>().recordError(error, stack);
  }, zoneSpecification: const ZoneSpecification());
}
