import 'dart:async';

import 'package:account/account.dart';
import 'package:checkout/checkout.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:fluttercommerce/app.dart';
import 'package:fluttercommerce/global_module.dart';
import 'package:intro/intro.dart';
import 'package:login/login.dart';
import 'package:network/network.dart';
import 'package:product/product.dart';

class Initializer {
  Initializer._();

  static final _modules = <Module>[
    /// Should call first as App level configuration will be defined
    GlobalModule(),

    InitialModule(),
    AddressModule(),
    CheckoutModule(),
    LoginModule(),
    ProductModule(),
  ];

  static void registerModules() {
    for (final module in _modules) {
      module.registerDependencies();
      module.registerGlobalListeners();
    }
  }

  static void closeModules() {
    for (final module in _modules) {
      module.close();
    }
  }

  static void initialize(ValueChanged<Widget> onRun) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    Initializer.registerModules();
    runZonedGuarded(() {
      runStateObserver();
      onRun(const App());
    }, (error, stack) {
      AppLogger.log('App level error', logType: LogType.error, error: error, stackTrace: stack);
      DI.container<CrashlyticsService>().recordError(error, stack);
    }, zoneSpecification: const ZoneSpecification());
  }
}
