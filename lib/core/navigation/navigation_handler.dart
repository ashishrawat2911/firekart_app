import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercommerce/features/app/navigation/app_router.gr.dart';

export 'package:fluttercommerce/features/app/navigation/app_router.gr.dart';

enum NavigationType { Push, PushReplacement, PopUntil, PushAndPopUntil }

class NavigationHandler {
  NavigationHandler();

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final _appRouter = AppRouter(navigatorKey);

  static RouteInformationParser<Object> get routeInformationParser =>
      _appRouter.defaultRouteParser();

  static RouterDelegate<Object> get routerDelegate => _appRouter.delegate();

  // static NavigatorState get _navigator => navigatorKey.currentState!;

  static Future<dynamic> navigateTo(
    PageRouteInfo route, {
    NavigationType navigationType = NavigationType.Push,
    RoutePredicate? predicate,
  }) async {
    switch (navigationType) {
      case NavigationType.Push:
        return _appRouter.push(route);
      case NavigationType.PushReplacement:
        return _appRouter.replace(route);
      case NavigationType.PopUntil:
        return _appRouter.popUntilRouteWithName(route.routeName);
      case NavigationType.PushAndPopUntil:
        _appRouter.navigate(route);
      // return _navigator.pushNamedAndRemoveUntil(
      //   routeName,
      //   predicate!,
      // );
    }
  }

  static Future<dynamic> pop([Object? arguments]) async {
    return _appRouter.pop(arguments);
  }

  static bool canNavigateBack() {
    return _appRouter.canNavigateBack;
  }
}
