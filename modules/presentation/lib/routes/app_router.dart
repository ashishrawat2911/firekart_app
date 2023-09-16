/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.gr.dart';

/*
* Run this command in terminal
* flutter packages pub run build_runner build --delete-conflicting-outputs
* */

/*
* Run this command in terminal to watch auto change
* flutter packages pub run build_runner watch --delete-conflicting-outputs
* */

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
