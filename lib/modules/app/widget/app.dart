import 'package:flutter/material.dart';
import 'package:fluttercommerce/modules/init/splash_screen.dart';
import 'package:fluttercommerce/modules/order/bloc/account_details_cubit.dart';
import 'package:fluttercommerce/routes/router.gr.dart';
import 'package:fluttercommerce/res/app_theme.dart';
import 'package:fluttercommerce/di/di.dart';

class App extends StatefulWidget {
  const App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    var accountDetailsCubit = DI.container<AccountDetailsCubit>();
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
