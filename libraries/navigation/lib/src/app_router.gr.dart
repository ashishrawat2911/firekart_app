// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:account/account.dart' as _i5;
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:fluttercommerce/features/cart/screen/cart_screen.dart' as _i6;
import 'package:fluttercommerce/features/home/screen/home_screen.dart' as _i2;
import 'package:fluttercommerce/features/home/screen/search_screen.dart' as _i8;
import 'package:fluttercommerce/features/order/screen/my_orders_screen.dart'
    as _i9;
import 'package:fluttercommerce/features/product/product_detail/view/product_detail_page.dart'
    as _i4;
import 'package:fluttercommerce/features/product/product_list/view/all_product_list_screen.dart'
    as _i7;
import 'package:intro/intro.dart' as _i1;
import 'package:login/login.dart' as _i3;
import 'package:network/network.dart' as _i12;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i10.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    CheckStatusScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CheckStatusScreenRouteArgs>(
          orElse: () => const CheckStatusScreenRouteArgs());
      return _i10.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i1.CheckStatusScreen(
              key: args.key,
              checkForAccountStatusOnly: args.checkForAccountStatusOnly));
    },
    HomeScreenRoute.name: (routeData) {
      return _i10.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    LoginScreenRoute.name: (routeData) {
      return _i10.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginScreen());
    },
    OtpLoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<OtpLoginScreenRouteArgs>(
          orElse: () => const OtpLoginScreenRouteArgs());
      return _i10.CupertinoPageX<dynamic>(
          routeData: routeData,
          child:
              _i3.OtpLoginScreen(phoneNumber: args.phoneNumber, key: args.key));
    },
    ProductDetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailPageRouteArgs>();
      return _i10.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i4.ProductDetailPage(args.productModel, key: args.key));
    },
    AddUserDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AddUserDetailScreenRouteArgs>();
      return _i10.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i5.AddUserDetailScreen(args.newAddress, key: args.key));
    },
    CartScreenRoute.name: (routeData) {
      return _i10.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.CartScreen());
    },
    AllProductListScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AllProductListScreenRouteArgs>(
          orElse: () => const AllProductListScreenRouteArgs());
      return _i10.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i7.AllProductListScreen(
              key: args.key, productCondition: args.productCondition));
    },
    SearchItemScreenRoute.name: (routeData) {
      return _i10.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.SearchItemScreen());
    },
    MyAddressScreenRoute.name: (routeData) {
      final args = routeData.argsAs<MyAddressScreenRouteArgs>(
          orElse: () => const MyAddressScreenRouteArgs());
      return _i10.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i5.MyAddressScreen(
              key: args.key, selectedAddress: args.selectedAddress));
    },
    AddAddressScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AddAddressScreenRouteArgs>();
      return _i10.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i5.AddAddressScreen(args.newAddress, args.accountDetails,
              key: args.key, editAddress: args.editAddress));
    },
    MyOrdersScreenRoute.name: (routeData) {
      return _i10.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.MyOrdersScreen());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i10.RouteConfig(CheckStatusScreenRoute.name,
            path: '/check-status-screen'),
        _i10.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i10.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i10.RouteConfig(OtpLoginScreenRoute.name, path: '/otp-login-screen'),
        _i10.RouteConfig(ProductDetailPageRoute.name,
            path: '/product-detail-page'),
        _i10.RouteConfig(AddUserDetailScreenRoute.name,
            path: '/add-user-detail-screen'),
        _i10.RouteConfig(CartScreenRoute.name, path: '/cart-screen'),
        _i10.RouteConfig(AllProductListScreenRoute.name,
            path: '/all-product-list-screen'),
        _i10.RouteConfig(SearchItemScreenRoute.name,
            path: '/search-item-screen'),
        _i10.RouteConfig(MyAddressScreenRoute.name, path: '/my-address-screen'),
        _i10.RouteConfig(AddAddressScreenRoute.name,
            path: '/add-address-screen'),
        _i10.RouteConfig(MyOrdersScreenRoute.name, path: '/my-orders-screen')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i10.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i1.CheckStatusScreen]
class CheckStatusScreenRoute
    extends _i10.PageRouteInfo<CheckStatusScreenRouteArgs> {
  CheckStatusScreenRoute(
      {_i11.Key? key, bool checkForAccountStatusOnly = false})
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

  final _i11.Key? key;

  final bool checkForAccountStatusOnly;

  @override
  String toString() {
    return 'CheckStatusScreenRouteArgs{key: $key, checkForAccountStatusOnly: $checkForAccountStatusOnly}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRoute extends _i10.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreenRoute extends _i10.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(LoginScreenRoute.name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.OtpLoginScreen]
class OtpLoginScreenRoute extends _i10.PageRouteInfo<OtpLoginScreenRouteArgs> {
  OtpLoginScreenRoute({String? phoneNumber, _i11.Key? key})
      : super(OtpLoginScreenRoute.name,
            path: '/otp-login-screen',
            args: OtpLoginScreenRouteArgs(phoneNumber: phoneNumber, key: key));

  static const String name = 'OtpLoginScreenRoute';
}

class OtpLoginScreenRouteArgs {
  const OtpLoginScreenRouteArgs({this.phoneNumber, this.key});

  final String? phoneNumber;

  final _i11.Key? key;

  @override
  String toString() {
    return 'OtpLoginScreenRouteArgs{phoneNumber: $phoneNumber, key: $key}';
  }
}

/// generated route for
/// [_i4.ProductDetailPage]
class ProductDetailPageRoute
    extends _i10.PageRouteInfo<ProductDetailPageRouteArgs> {
  ProductDetailPageRoute(
      {required _i12.ProductModel productModel, _i11.Key? key})
      : super(ProductDetailPageRoute.name,
            path: '/product-detail-page',
            args: ProductDetailPageRouteArgs(
                productModel: productModel, key: key));

  static const String name = 'ProductDetailPageRoute';
}

class ProductDetailPageRouteArgs {
  const ProductDetailPageRouteArgs({required this.productModel, this.key});

  final _i12.ProductModel productModel;

  final _i11.Key? key;

  @override
  String toString() {
    return 'ProductDetailPageRouteArgs{productModel: $productModel, key: $key}';
  }
}

/// generated route for
/// [_i5.AddUserDetailScreen]
class AddUserDetailScreenRoute
    extends _i10.PageRouteInfo<AddUserDetailScreenRouteArgs> {
  AddUserDetailScreenRoute({required bool newAddress, _i11.Key? key})
      : super(AddUserDetailScreenRoute.name,
            path: '/add-user-detail-screen',
            args:
                AddUserDetailScreenRouteArgs(newAddress: newAddress, key: key));

  static const String name = 'AddUserDetailScreenRoute';
}

class AddUserDetailScreenRouteArgs {
  const AddUserDetailScreenRouteArgs({required this.newAddress, this.key});

  final bool newAddress;

  final _i11.Key? key;

  @override
  String toString() {
    return 'AddUserDetailScreenRouteArgs{newAddress: $newAddress, key: $key}';
  }
}

/// generated route for
/// [_i6.CartScreen]
class CartScreenRoute extends _i10.PageRouteInfo<void> {
  const CartScreenRoute() : super(CartScreenRoute.name, path: '/cart-screen');

  static const String name = 'CartScreenRoute';
}

/// generated route for
/// [_i7.AllProductListScreen]
class AllProductListScreenRoute
    extends _i10.PageRouteInfo<AllProductListScreenRouteArgs> {
  AllProductListScreenRoute({_i11.Key? key, String? productCondition})
      : super(AllProductListScreenRoute.name,
            path: '/all-product-list-screen',
            args: AllProductListScreenRouteArgs(
                key: key, productCondition: productCondition));

  static const String name = 'AllProductListScreenRoute';
}

class AllProductListScreenRouteArgs {
  const AllProductListScreenRouteArgs({this.key, this.productCondition});

  final _i11.Key? key;

  final String? productCondition;

  @override
  String toString() {
    return 'AllProductListScreenRouteArgs{key: $key, productCondition: $productCondition}';
  }
}

/// generated route for
/// [_i8.SearchItemScreen]
class SearchItemScreenRoute extends _i10.PageRouteInfo<void> {
  const SearchItemScreenRoute()
      : super(SearchItemScreenRoute.name, path: '/search-item-screen');

  static const String name = 'SearchItemScreenRoute';
}

/// generated route for
/// [_i5.MyAddressScreen]
class MyAddressScreenRoute
    extends _i10.PageRouteInfo<MyAddressScreenRouteArgs> {
  MyAddressScreenRoute({_i11.Key? key, bool selectedAddress = false})
      : super(MyAddressScreenRoute.name,
            path: '/my-address-screen',
            args: MyAddressScreenRouteArgs(
                key: key, selectedAddress: selectedAddress));

  static const String name = 'MyAddressScreenRoute';
}

class MyAddressScreenRouteArgs {
  const MyAddressScreenRouteArgs({this.key, this.selectedAddress = false});

  final _i11.Key? key;

  final bool selectedAddress;

  @override
  String toString() {
    return 'MyAddressScreenRouteArgs{key: $key, selectedAddress: $selectedAddress}';
  }
}

/// generated route for
/// [_i5.AddAddressScreen]
class AddAddressScreenRoute
    extends _i10.PageRouteInfo<AddAddressScreenRouteArgs> {
  AddAddressScreenRoute(
      {required bool newAddress,
      required _i12.AccountDetails accountDetails,
      _i11.Key? key,
      _i12.Address? editAddress})
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

  final _i12.AccountDetails accountDetails;

  final _i11.Key? key;

  final _i12.Address? editAddress;

  @override
  String toString() {
    return 'AddAddressScreenRouteArgs{newAddress: $newAddress, accountDetails: $accountDetails, key: $key, editAddress: $editAddress}';
  }
}

/// generated route for
/// [_i9.MyOrdersScreen]
class MyOrdersScreenRoute extends _i10.PageRouteInfo<void> {
  const MyOrdersScreenRoute()
      : super(MyOrdersScreenRoute.name, path: '/my-orders-screen');

  static const String name = 'MyOrdersScreenRoute';
}
