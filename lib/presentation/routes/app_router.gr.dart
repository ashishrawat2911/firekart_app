// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

import '../features/add_account_detail/view/add_user_detail_screen.dart'
    as _i11;
import '../features/add_address/view/add_address_screen.dart' as _i14;
import '../features/cart/view/cart_screen.dart' as _i7;
import '../features/check_status/view/check_status_check_screen.dart' as _i2;
import '../features/dashboard/view/dashboard_screen.dart' as _i6;
import '../features/home/screen/home_screen.dart' as _i5;
import '../features/my_address/view/my_address_screen.dart' as _i13;
import '../features/otp_login/view/otp_login_screen.dart' as _i4;
import '../features/phone_login/view/phone_login_screen.dart' as _i3;
import '../features/product_detail/view/product_detail_page.dart' as _i10;
import '../features/product_list/view/all_product_list_screen.dart' as _i12;
import '../features/search/view/search_screen.dart' as _i9;
import '../features/splash/view/splash_screen.dart' as _i1;
import '../features/view/account_screen.dart' as _i8;

class AppRouter extends _i15.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    CheckStatusScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CheckStatusScreenRouteArgs>(
          orElse: () => const CheckStatusScreenRouteArgs());
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i2.CheckStatusScreen(
              key: args.key,
              checkForAccountStatusOnly: args.checkForAccountStatusOnly));
    },
    LoginScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginScreen());
    },
    OtpLoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<OtpLoginScreenRouteArgs>(
          orElse: () => const OtpLoginScreenRouteArgs());
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData,
          child:
              _i4.OtpLoginScreen(phoneNumber: args.phoneNumber, key: args.key));
    },
    HomeScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.HomeScreen());
    },
    DashboardScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.DashboardScreen());
    },
    CartScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.CartScreen());
    },
    AccountScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.AccountScreen());
    },
    SearchItemScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.SearchItemScreen());
    },
    ProductDetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailPageRouteArgs>();
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i10.ProductDetailPage(args.productModel, key: args.key));
    },
    AddUserDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AddUserDetailScreenRouteArgs>();
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i11.AddUserDetailScreen(args.newAddress, key: args.key));
    },
    AllProductListScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AllProductListScreenRouteArgs>(
          orElse: () => const AllProductListScreenRouteArgs());
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i12.AllProductListScreen(
              key: args.key, productCondition: args.productCondition));
    },
    MyAddressScreenRoute.name: (routeData) {
      final args = routeData.argsAs<MyAddressScreenRouteArgs>(
          orElse: () => const MyAddressScreenRouteArgs());
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i13.MyAddressScreen(
              key: args.key, selectedAddress: args.selectedAddress));
    },
    AddAddressScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AddAddressScreenRouteArgs>();
      return _i15.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i14.AddAddressScreen(args.newAddress, args.accountDetails,
              key: args.key, editAddress: args.editAddress));
    }
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i15.RouteConfig(CheckStatusScreenRoute.name,
            path: '/check-status-screen'),
        _i15.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i15.RouteConfig(OtpLoginScreenRoute.name, path: '/otp-login-screen'),
        _i15.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i15.RouteConfig(DashboardScreenRoute.name, path: '/dashboard-screen'),
        _i15.RouteConfig(CartScreenRoute.name, path: '/cart-screen'),
        _i15.RouteConfig(AccountScreenRoute.name, path: '/account-screen'),
        _i15.RouteConfig(SearchItemScreenRoute.name,
            path: '/search-item-screen'),
        _i15.RouteConfig(ProductDetailPageRoute.name,
            path: '/product-detail-page'),
        _i15.RouteConfig(AddUserDetailScreenRoute.name,
            path: '/add-user-detail-screen'),
        _i15.RouteConfig(AllProductListScreenRoute.name,
            path: '/all-product-list-screen'),
        _i15.RouteConfig(MyAddressScreenRoute.name, path: '/my-address-screen'),
        _i15.RouteConfig(AddAddressScreenRoute.name,
            path: '/add-address-screen')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i15.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.CheckStatusScreen]
class CheckStatusScreenRoute
    extends _i15.PageRouteInfo<CheckStatusScreenRouteArgs> {
  CheckStatusScreenRoute(
      {_i16.Key? key, bool checkForAccountStatusOnly = false})
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

  final _i16.Key? key;

  final bool checkForAccountStatusOnly;

  @override
  String toString() {
    return 'CheckStatusScreenRouteArgs{key: $key, checkForAccountStatusOnly: $checkForAccountStatusOnly}';
  }
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreenRoute extends _i15.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(LoginScreenRoute.name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i4.OtpLoginScreen]
class OtpLoginScreenRoute extends _i15.PageRouteInfo<OtpLoginScreenRouteArgs> {
  OtpLoginScreenRoute({String? phoneNumber, _i16.Key? key})
      : super(OtpLoginScreenRoute.name,
            path: '/otp-login-screen',
            args: OtpLoginScreenRouteArgs(phoneNumber: phoneNumber, key: key));

  static const String name = 'OtpLoginScreenRoute';
}

class OtpLoginScreenRouteArgs {
  const OtpLoginScreenRouteArgs({this.phoneNumber, this.key});

  final String? phoneNumber;

  final _i16.Key? key;

  @override
  String toString() {
    return 'OtpLoginScreenRouteArgs{phoneNumber: $phoneNumber, key: $key}';
  }
}

/// generated route for
/// [_i5.HomeScreen]
class HomeScreenRoute extends _i15.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i6.DashboardScreen]
class DashboardScreenRoute extends _i15.PageRouteInfo<void> {
  const DashboardScreenRoute()
      : super(DashboardScreenRoute.name, path: '/dashboard-screen');

  static const String name = 'DashboardScreenRoute';
}

/// generated route for
/// [_i7.CartScreen]
class CartScreenRoute extends _i15.PageRouteInfo<void> {
  const CartScreenRoute() : super(CartScreenRoute.name, path: '/cart-screen');

  static const String name = 'CartScreenRoute';
}

/// generated route for
/// [_i8.AccountScreen]
class AccountScreenRoute extends _i15.PageRouteInfo<void> {
  const AccountScreenRoute()
      : super(AccountScreenRoute.name, path: '/account-screen');

  static const String name = 'AccountScreenRoute';
}

/// generated route for
/// [_i9.SearchItemScreen]
class SearchItemScreenRoute extends _i15.PageRouteInfo<void> {
  const SearchItemScreenRoute()
      : super(SearchItemScreenRoute.name, path: '/search-item-screen');

  static const String name = 'SearchItemScreenRoute';
}

/// generated route for
/// [_i10.ProductDetailPage]
class ProductDetailPageRoute
    extends _i15.PageRouteInfo<ProductDetailPageRouteArgs> {
  ProductDetailPageRoute({required dynamic productModel, _i16.Key? key})
      : super(ProductDetailPageRoute.name,
            path: '/product-detail-page',
            args: ProductDetailPageRouteArgs(
                productModel: productModel, key: key));

  static const String name = 'ProductDetailPageRoute';
}

class ProductDetailPageRouteArgs {
  const ProductDetailPageRouteArgs({required this.productModel, this.key});

  final dynamic productModel;

  final _i16.Key? key;

  @override
  String toString() {
    return 'ProductDetailPageRouteArgs{productModel: $productModel, key: $key}';
  }
}

/// generated route for
/// [_i11.AddUserDetailScreen]
class AddUserDetailScreenRoute
    extends _i15.PageRouteInfo<AddUserDetailScreenRouteArgs> {
  AddUserDetailScreenRoute({required bool newAddress, _i16.Key? key})
      : super(AddUserDetailScreenRoute.name,
            path: '/add-user-detail-screen',
            args:
                AddUserDetailScreenRouteArgs(newAddress: newAddress, key: key));

  static const String name = 'AddUserDetailScreenRoute';
}

class AddUserDetailScreenRouteArgs {
  const AddUserDetailScreenRouteArgs({required this.newAddress, this.key});

  final bool newAddress;

  final _i16.Key? key;

  @override
  String toString() {
    return 'AddUserDetailScreenRouteArgs{newAddress: $newAddress, key: $key}';
  }
}

/// generated route for
/// [_i12.AllProductListScreen]
class AllProductListScreenRoute
    extends _i15.PageRouteInfo<AllProductListScreenRouteArgs> {
  AllProductListScreenRoute({_i16.Key? key, String? productCondition})
      : super(AllProductListScreenRoute.name,
            path: '/all-product-list-screen',
            args: AllProductListScreenRouteArgs(
                key: key, productCondition: productCondition));

  static const String name = 'AllProductListScreenRoute';
}

class AllProductListScreenRouteArgs {
  const AllProductListScreenRouteArgs({this.key, this.productCondition});

  final _i16.Key? key;

  final String? productCondition;

  @override
  String toString() {
    return 'AllProductListScreenRouteArgs{key: $key, productCondition: $productCondition}';
  }
}

/// generated route for
/// [_i13.MyAddressScreen]
class MyAddressScreenRoute
    extends _i15.PageRouteInfo<MyAddressScreenRouteArgs> {
  MyAddressScreenRoute({_i16.Key? key, bool selectedAddress = false})
      : super(MyAddressScreenRoute.name,
            path: '/my-address-screen',
            args: MyAddressScreenRouteArgs(
                key: key, selectedAddress: selectedAddress));

  static const String name = 'MyAddressScreenRoute';
}

class MyAddressScreenRouteArgs {
  const MyAddressScreenRouteArgs({this.key, this.selectedAddress = false});

  final _i16.Key? key;

  final bool selectedAddress;

  @override
  String toString() {
    return 'MyAddressScreenRouteArgs{key: $key, selectedAddress: $selectedAddress}';
  }
}

/// generated route for
/// [_i14.AddAddressScreen]
class AddAddressScreenRoute
    extends _i15.PageRouteInfo<AddAddressScreenRouteArgs> {
  AddAddressScreenRoute(
      {required bool newAddress,
      required dynamic accountDetails,
      _i16.Key? key,
      dynamic editAddress})
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

  final dynamic accountDetails;

  final _i16.Key? key;

  final dynamic editAddress;

  @override
  String toString() {
    return 'AddAddressScreenRouteArgs{newAddress: $newAddress, accountDetails: $accountDetails, key: $key, editAddress: $editAddress}';
  }
}
