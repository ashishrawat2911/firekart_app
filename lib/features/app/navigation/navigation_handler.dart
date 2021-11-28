import 'package:flutter/material.dart';
import 'package:fluttercommerce/features/app/navigation/app_router.gr.dart';

export 'package:fluttercommerce/features/app/navigation/app_router.gr.dart';

enum NavigationType { Push, PushReplacement, PopUntil, Pop, PushAndPopUntil }

class NavigationHandler extends Navigator {
  const NavigationHandler({Key? key}) : super(key: key);

  static final GlobalKey<NavigatorState> _navigatorKey =
      GlobalKey<NavigatorState>();
  static final _appRouter = AppRouter(_navigatorKey);

  static RouteInformationParser<Object> get routeInformationParser =>
      _appRouter.defaultRouteParser();

  static RouterDelegate<Object> get routerDelegate => _appRouter.delegate();

  static NavigatorState get _navigator => _navigatorKey.currentState!;

  static Future<dynamic> navigateTo(
    String routeName, {
    NavigationType navigationType = NavigationType.Push,
    Object? arguments,
    RoutePredicate? predicate,
  }) async {
    switch (navigationType) {
      case NavigationType.Push:
        return _navigator.pushNamed(routeName, arguments: arguments);
      case NavigationType.PushReplacement:
        return _navigator.pushReplacementNamed(routeName, arguments: arguments);
      case NavigationType.PopUntil:
        return _appRouter.popUntilRouteWithName(routeName);
      case NavigationType.Pop:
        return _navigator.pop(arguments);
      case NavigationType.PushAndPopUntil:
        return _navigator.pushNamedAndRemoveUntil(
          routeName,
          predicate!,
        );
    }
  }

  static Future<dynamic> pop([Object? arguments]) async {
    return _navigator.pop(arguments);
  }
}
