import 'package:auto_route/auto_route.dart';
import 'package:core/di/di.dart';
import 'package:core/logger/app_logger.dart';
import 'package:core/performance/performance_moniter.dart';
import 'package:flutter/material.dart';

import 'app_router.gr.dart';

class NavigationHandler {
  NavigationHandler();

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final _appRouter = AppRouter(navigatorKey);

  static RouteInformationParser<Object> get routeInformationParser =>
      _appRouter.defaultRouteParser();

  static RouterDelegate<Object> get routerDelegate => _appRouter.delegate();

  static Future<T?> navigateTo<T>(
    PageRouteInfo route, {
    NavigationType navigationType = NavigationType.push,
  }) async {
    AppLogger.log('Navigating to ${route.path}');
    // ignore:avoid-dynamic
    Future<T?> getNavigation() {
      switch (navigationType) {
        case NavigationType.push:
          return _appRouter.push<T>(route);
        case NavigationType.pushReplacement:
          return _appRouter.replace(route);
        case NavigationType.popUntil:
          _appRouter.popUntilRouteWithName(route.routeName);
          return Future.value();
        case NavigationType.pushAndPopUntil:
          _appRouter.popUntilRoot();
          return _appRouter.replace(route);
      }
    }

    final perfMonitor = inject<PerformanceMonitor>();
    await perfMonitor.startScreenEvent(route.path, properties: {
      'args': route.args.toString(),
    },);
    final navigation = getNavigation();
    await perfMonitor.endScreenEvent(route.path, properties: {
      'args': route.args.toString(),
    },);

    return navigation;
  }

  static Future<bool> pop<T extends Object?>([T? arguments]) =>
      _appRouter.pop<T>(arguments);

  static bool canNavigateBack() => _appRouter.canNavigateBack;
}

enum NavigationType { push, pushReplacement, popUntil, pushAndPopUntil }
