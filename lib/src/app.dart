import 'package:flutter/material.dart';
import 'package:fluttercommerce/src/bloc/selected_address/account_details_cubit.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/res/app_theme.dart';
import 'package:fluttercommerce/src/routes/router.gr.dart';
import 'package:fluttercommerce/src/ui/screens/splash_screen.dart';

class App extends StatefulWidget {
  const App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    var accountDetailsCubit = AppInjector.get<AccountDetailsCubit>();
    accountDetailsCubit.streamAccountDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter(),
      initialRoute: Routes.splashScreen,
      home: const SplashScreen(),
    );
  }
}
