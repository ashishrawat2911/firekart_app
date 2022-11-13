import 'package:flutter/material.dart';
import 'package:fluttercommerce/presentation/routes/navigation_handler.dart';

import 'core/message_handler/message_handler.dart';
import 'presentation/res/app_theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.appTheme(),
      darkTheme: AppTheme.appTheme(),
      debugShowCheckedModeBanner: false,
      routerDelegate: NavigationHandler.routerDelegate,
      routeInformationParser: NavigationHandler.routeInformationParser,
      scaffoldMessengerKey: MessageHandler.scaffoldMessengerKey,
    );
  }
}
