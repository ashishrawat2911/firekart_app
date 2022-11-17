import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercommerce/core/logger/app_logger.dart';
import 'package:fluttercommerce/core/performance/performance_moniter.dart';

import '../../di/di.dart';
import 'app_router.gr.dart';

enum NavigationType { push, pushReplacement, popUntil, pushAndPopUntil }

class NavigationHandler {
  NavigationHandler();

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final _appRouter = AppRouter(navigatorKey);

  static RouteInformationParser<Object> get routeInformationParser =>
      _appRouter.defaultRouteParser();

  static RouterDelegate<Object> get routerDelegate => _appRouter.delegate();

  static Future<T> navigateTo<T>(
    PageRouteInfo route, {
    NavigationType navigationType = NavigationType.push,
  }) async {
    AppLogger.log("Navigating to ${route.path}");
    dynamic getNavigation() {
      switch (navigationType) {
        case NavigationType.push:
          return _appRouter.push(route);
        case NavigationType.pushReplacement:
          return _appRouter.replace(route);
        case NavigationType.popUntil:
          return _appRouter.popUntilRouteWithName(route.routeName);
        case NavigationType.pushAndPopUntil:
          _appRouter.popUntilRoot();
          return _appRouter.replace(route);
      }
    }

    final perfMonitor = inject<PerformanceMonitor>();
    await perfMonitor.startScreenEvent(route.path, properties: {
      "args": route.args.toString(),
    });
    final navigation = getNavigation();
    await perfMonitor.endScreenEvent(route.path, properties: {
      "args": route.args.toString(),
    });
    return navigation;
  }

  static Future<dynamic> pop([Object? arguments]) async {
    return _appRouter.pop(arguments);
  }

  static bool canNavigateBack() {
    return _appRouter.canNavigateBack;
  }
}
