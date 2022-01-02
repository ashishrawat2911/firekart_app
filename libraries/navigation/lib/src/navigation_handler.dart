import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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

  static Future<dynamic> navigateTo(
    PageRouteInfo route, {
    NavigationType navigationType = NavigationType.push,
    @Deprecated('RoutePredicate is Deprecated') RoutePredicate? predicate,
  }) async {
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

  static Future<dynamic> pop([Object? arguments]) async {
    return _appRouter.pop(arguments);
  }

  static bool canNavigateBack() {
    return _appRouter.canNavigateBack;
  }
}
