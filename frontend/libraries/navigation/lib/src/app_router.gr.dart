// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:account/account.dart' as _i4;
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:checkout/checkout.dart' as _i3;
import 'package:flutter/material.dart' as _i7;
import 'package:intro/intro.dart' as _i1;
import 'package:login/login.dart' as _i2;
import 'package:network/network.dart' as _i8;
import 'package:product/product.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    CheckStatusScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CheckStatusScreenRouteArgs>(
          orElse: () => const CheckStatusScreenRouteArgs());
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i1.CheckStatusScreen(
              key: args.key,
              checkForAccountStatusOnly: args.checkForAccountStatusOnly));
    },
    LoginScreenRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    OtpLoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<OtpLoginScreenRouteArgs>(
          orElse: () => const OtpLoginScreenRouteArgs());
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData,
          child:
              _i2.OtpLoginScreen(phoneNumber: args.phoneNumber, key: args.key));
    },
    HomeScreenRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    DashboardScreenRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.DashboardScreen());
    },
    CartScreenRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.CartScreen());
    },
    AccountScreenRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.AccountScreen());
    },
    SearchItemScreenRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.SearchItemScreen());
    },
    ProductDetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailPageRouteArgs>();
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i5.ProductDetailPage(args.productModel, key: args.key));
    },
    AddUserDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AddUserDetailScreenRouteArgs>();
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i4.AddUserDetailScreen(args.newAddress, key: args.key));
    },
    AllProductListScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AllProductListScreenRouteArgs>(
          orElse: () => const AllProductListScreenRouteArgs());
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i5.AllProductListScreen(
              key: args.key, productCondition: args.productCondition));
    },
    MyAddressScreenRoute.name: (routeData) {
      final args = routeData.argsAs<MyAddressScreenRouteArgs>(
          orElse: () => const MyAddressScreenRouteArgs());
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i4.MyAddressScreen(
              key: args.key, selectedAddress: args.selectedAddress));
    },
    AddAddressScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AddAddressScreenRouteArgs>();
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i4.AddAddressScreen(args.newAddress, args.accountDetails,
              key: args.key, editAddress: args.editAddress));
    },
    MyOrdersScreenRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.MyOrdersScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i6.RouteConfig(CheckStatusScreenRoute.name,
            path: '/check-status-screen'),
        _i6.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i6.RouteConfig(OtpLoginScreenRoute.name, path: '/otp-login-screen'),
        _i6.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i6.RouteConfig(DashboardScreenRoute.name, path: '/dashboard-screen'),
        _i6.RouteConfig(CartScreenRoute.name, path: '/cart-screen'),
        _i6.RouteConfig(AccountScreenRoute.name, path: '/account-screen'),
        _i6.RouteConfig(SearchItemScreenRoute.name,
            path: '/search-item-screen'),
        _i6.RouteConfig(ProductDetailPageRoute.name,
            path: '/product-detail-page'),
        _i6.RouteConfig(AddUserDetailScreenRoute.name,
            path: '/add-user-detail-screen'),
        _i6.RouteConfig(AllProductListScreenRoute.name,
            path: '/all-product-list-screen'),
        _i6.RouteConfig(MyAddressScreenRoute.name, path: '/my-address-screen'),
        _i6.RouteConfig(AddAddressScreenRoute.name,
            path: '/add-address-screen'),
        _i6.RouteConfig(MyOrdersScreenRoute.name, path: '/my-orders-screen')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i6.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i1.CheckStatusScreen]
class CheckStatusScreenRoute
    extends _i6.PageRouteInfo<CheckStatusScreenRouteArgs> {
  CheckStatusScreenRoute({_i7.Key? key, bool checkForAccountStatusOnly = false})
      : super(CheckStatusScreenRoute.name,
            path: '/check-status-screen',
            args: CheckStatusScreenRouteArgs(
                key: key,
                checkForAccountStatusOnly: checkForAccountStatusOnly));

  static const String name = 'CheckStatusScreenRoute';
}

class CheckStatusScreenRouteArgs {
  const CheckStatusScreenRouteArgs(
      {this.key, this.checkForAccountStatusOnly = false});

  final _i7.Key? key;

  final bool checkForAccountStatusOnly;

  @override
  String toString() {
    return 'CheckStatusScreenRouteArgs{key: $key, checkForAccountStatusOnly: $checkForAccountStatusOnly}';
  }
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i6.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(LoginScreenRoute.name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i2.OtpLoginScreen]
class OtpLoginScreenRoute extends _i6.PageRouteInfo<OtpLoginScreenRouteArgs> {
  OtpLoginScreenRoute({String? phoneNumber, _i7.Key? key})
      : super(OtpLoginScreenRoute.name,
            path: '/otp-login-screen',
            args: OtpLoginScreenRouteArgs(phoneNumber: phoneNumber, key: key));

  static const String name = 'OtpLoginScreenRoute';
}

class OtpLoginScreenRouteArgs {
  const OtpLoginScreenRouteArgs({this.phoneNumber, this.key});

  final String? phoneNumber;

  final _i7.Key? key;

  @override
  String toString() {
    return 'OtpLoginScreenRouteArgs{phoneNumber: $phoneNumber, key: $key}';
  }
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i6.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i1.DashboardScreen]
class DashboardScreenRoute extends _i6.PageRouteInfo<void> {
  const DashboardScreenRoute()
      : super(DashboardScreenRoute.name, path: '/dashboard-screen');

  static const String name = 'DashboardScreenRoute';
}

/// generated route for
/// [_i3.CartScreen]
class CartScreenRoute extends _i6.PageRouteInfo<void> {
  const CartScreenRoute() : super(CartScreenRoute.name, path: '/cart-screen');

  static const String name = 'CartScreenRoute';
}

/// generated route for
/// [_i4.AccountScreen]
class AccountScreenRoute extends _i6.PageRouteInfo<void> {
  const AccountScreenRoute()
      : super(AccountScreenRoute.name, path: '/account-screen');

  static const String name = 'AccountScreenRoute';
}

/// generated route for
/// [_i1.SearchItemScreen]
class SearchItemScreenRoute extends _i6.PageRouteInfo<void> {
  const SearchItemScreenRoute()
      : super(SearchItemScreenRoute.name, path: '/search-item-screen');

  static const String name = 'SearchItemScreenRoute';
}

/// generated route for
/// [_i5.ProductDetailPage]
class ProductDetailPageRoute
    extends _i6.PageRouteInfo<ProductDetailPageRouteArgs> {
  ProductDetailPageRoute({required _i8.ProductModel productModel, _i7.Key? key})
      : super(ProductDetailPageRoute.name,
            path: '/product-detail-page',
            args: ProductDetailPageRouteArgs(
                productModel: productModel, key: key));

  static const String name = 'ProductDetailPageRoute';
}

class ProductDetailPageRouteArgs {
  const ProductDetailPageRouteArgs({required this.productModel, this.key});

  final _i8.ProductModel productModel;

  final _i7.Key? key;

  @override
  String toString() {
    return 'ProductDetailPageRouteArgs{productModel: $productModel, key: $key}';
  }
}

/// generated route for
/// [_i4.AddUserDetailScreen]
class AddUserDetailScreenRoute
    extends _i6.PageRouteInfo<AddUserDetailScreenRouteArgs> {
  AddUserDetailScreenRoute({required bool newAddress, _i7.Key? key})
      : super(AddUserDetailScreenRoute.name,
            path: '/add-user-detail-screen',
            args:
                AddUserDetailScreenRouteArgs(newAddress: newAddress, key: key));

  static const String name = 'AddUserDetailScreenRoute';
}

class AddUserDetailScreenRouteArgs {
  const AddUserDetailScreenRouteArgs({required this.newAddress, this.key});

  final bool newAddress;

  final _i7.Key? key;

  @override
  String toString() {
    return 'AddUserDetailScreenRouteArgs{newAddress: $newAddress, key: $key}';
  }
}

/// generated route for
/// [_i5.AllProductListScreen]
class AllProductListScreenRoute
    extends _i6.PageRouteInfo<AllProductListScreenRouteArgs> {
  AllProductListScreenRoute({_i7.Key? key, String? productCondition})
      : super(AllProductListScreenRoute.name,
            path: '/all-product-list-screen',
            args: AllProductListScreenRouteArgs(
                key: key, productCondition: productCondition));

  static const String name = 'AllProductListScreenRoute';
}

class AllProductListScreenRouteArgs {
  const AllProductListScreenRouteArgs({this.key, this.productCondition});

  final _i7.Key? key;

  final String? productCondition;

  @override
  String toString() {
    return 'AllProductListScreenRouteArgs{key: $key, productCondition: $productCondition}';
  }
}

/// generated route for
/// [_i4.MyAddressScreen]
class MyAddressScreenRoute extends _i6.PageRouteInfo<MyAddressScreenRouteArgs> {
  MyAddressScreenRoute({_i7.Key? key, bool selectedAddress = false})
      : super(MyAddressScreenRoute.name,
            path: '/my-address-screen',
            args: MyAddressScreenRouteArgs(
                key: key, selectedAddress: selectedAddress));

  static const String name = 'MyAddressScreenRoute';
}

class MyAddressScreenRouteArgs {
  const MyAddressScreenRouteArgs({this.key, this.selectedAddress = false});

  final _i7.Key? key;

  final bool selectedAddress;

  @override
  String toString() {
    return 'MyAddressScreenRouteArgs{key: $key, selectedAddress: $selectedAddress}';
  }
}

/// generated route for
/// [_i4.AddAddressScreen]
class AddAddressScreenRoute
    extends _i6.PageRouteInfo<AddAddressScreenRouteArgs> {
  AddAddressScreenRoute(
      {required bool newAddress,
      required _i8.AccountDetails accountDetails,
      _i7.Key? key,
      _i8.Address? editAddress})
      : super(AddAddressScreenRoute.name,
            path: '/add-address-screen',
            args: AddAddressScreenRouteArgs(
                newAddress: newAddress,
                accountDetails: accountDetails,
                key: key,
                editAddress: editAddress));

  static const String name = 'AddAddressScreenRoute';
}

class AddAddressScreenRouteArgs {
  const AddAddressScreenRouteArgs(
      {required this.newAddress,
      required this.accountDetails,
      this.key,
      this.editAddress});

  final bool newAddress;

  final _i8.AccountDetails accountDetails;

  final _i7.Key? key;

  final _i8.Address? editAddress;

  @override
  String toString() {
    return 'AddAddressScreenRouteArgs{newAddress: $newAddress, accountDetails: $accountDetails, key: $key, editAddress: $editAddress}';
  }
}

/// generated route for
/// [_i3.MyOrdersScreen]
class MyOrdersScreenRoute extends _i6.PageRouteInfo<void> {
  const MyOrdersScreenRoute()
      : super(MyOrdersScreenRoute.name, path: '/my-orders-screen');

  static const String name = 'MyOrdersScreenRoute';
}
