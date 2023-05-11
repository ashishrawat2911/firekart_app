import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.gr.dart';

/*
* Run this command in terminal
* flutter packages pub run build_runner build
* */

/*
* Run this command in terminal to watch auto change
* flutter packages pub run build_runner watch
* */

// @CupertinoAutoRouter(
//   routes: [
//     CupertinoRoute(
//       page: SplashScreen,
//       initial: true,
//     ),
//     CupertinoRoute(page: CheckStatusScreen),
//     CupertinoRoute(page: LoginScreen),
//     CupertinoRoute(page: OtpLoginScreen),
//     CupertinoRoute(page: HomeScreen),
//     CupertinoRoute(page: DashboardScreen),
//     CupertinoRoute(page: CartScreen),
//     CupertinoRoute(page: AccountScreen),
//     CupertinoRoute(page: SearchItemScreen),
//     CupertinoRoute(page: ProductDetailPage),
//     CupertinoRoute(page: AddUserDetailScreen),
//     CupertinoRoute(page: AllProductListScreen),
//     CupertinoRoute(page: MyAddressScreen),
//     CupertinoRoute(page: AddAddressScreen),
//     CupertinoRoute(page: MyOrdersScreen),
//   ],
//   replaceInRouteName: 'Routes',
// )

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter({GlobalKey<NavigatorState>? navigatorKey})
      : super(navigatorKey: navigatorKey);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(page: CheckStatusRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: OtpLoginRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: DashboardRoute.page),
        AutoRoute(page: CartRoute.page),
        AutoRoute(page: AccountRoute.page),
        AutoRoute(page: SearchItemRoute.page),
        AutoRoute(page: ProductDetailRoute.page),
        AutoRoute(page: AddUserDetailRoute.page),
        AutoRoute(page: AllProductListRoute.page),
        AutoRoute(page: MyAddressRoute.page),
        AutoRoute(page: AddAddressRoute.page),
        AutoRoute(page: MyOrdersRoute.page),
      ];
}
