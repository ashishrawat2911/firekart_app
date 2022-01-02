import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:fluttercommerce/initializer.dart';
import 'package:navigation/navigation.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.appTheme(),
      debugShowCheckedModeBanner: false,
      routerDelegate: NavigationHandler.routerDelegate,
      routeInformationParser: NavigationHandler.routeInformationParser,
      scaffoldMessengerKey: MessageHandler.scaffoldMessengerKey,
    );
  }

  @override
  void dispose() {
    super.dispose();
    Initializer.closeModules();
  }
}
