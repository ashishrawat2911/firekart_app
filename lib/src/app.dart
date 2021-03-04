import 'package:flutter/material.dart';
import 'package:fluttercommerce/src/res/app_theme.dart';
import 'package:fluttercommerce/src/routes/routers.dart';
import 'package:fluttercommerce/src/ui/screens/splash_screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter() as Route<dynamic>? Function(RouteSettings)?,
      initialRoute: Routes.splashScreen,
      home: SplashScreen(),
    );
  }
}
