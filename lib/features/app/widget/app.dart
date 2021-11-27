import 'package:flutter/material.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/order/bloc/account_details_cubit.dart';
import 'package:fluttercommerce/res/app_theme.dart';
import 'package:fluttercommerce/routes/router.gr.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    final accountDetailsCubit = DI.container<AccountDetailsCubit>();
    accountDetailsCubit.streamAccountDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MaterialApp.router(
      theme: AppTheme.appTheme(),
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
