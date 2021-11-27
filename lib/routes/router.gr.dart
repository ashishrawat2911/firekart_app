// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i15;

import '../features/address/screen/add_address_screen.dart' as _i13;
import '../features/address/screen/my_address_screen.dart' as _i12;
import '../features/checkout/screen/cart_screen.dart' as _i9;
import '../features/common/models/account_details_model.dart' as _i17;
import '../features/common/models/product_model.dart' as _i16;
import '../features/home/screen/main_home_screen.dart' as _i4;
import '../features/init/screen/check_status_check_screen.dart' as _i3;
import '../features/init/screen/splash_screen.dart' as _i2;
import '../features/login/screen/login_screen.dart' as _i5;
import '../features/login/screen/otp_login_screen.dart' as _i6;
import '../features/order/screen/my_orders_screen.dart' as _i14;
import '../features/product/screen/all_product_list_screen.dart' as _i10;
import '../features/product/screen/product_detail_page.dart' as _i7;
import '../features/search/screen/SearchScreen.dart' as _i11;
import '../features/user/screen/add_user_detail_screen.dart' as _i8;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (entry) {
      var args = entry.routeData
          .argsAs<SplashScreenRouteArgs>(orElse: () => SplashScreenRouteArgs());
      return _i1.CupertinoPageX(
          entry: entry, child: _i2.SplashScreen(key: args.key));
    },
    CheckStatusScreenRoute.name: (entry) {
      var args = entry.routeData.argsAs<CheckStatusScreenRouteArgs>(
          orElse: () => CheckStatusScreenRouteArgs());
      return _i1.CupertinoPageX(
          entry: entry,
          child: _i3.CheckStatusScreen(
              checkForAccountStatusOnly: args.checkForAccountStatusOnly));
    },
    MainHomeScreenRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i4.MainHomeScreen());
    },
    LoginScreenRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i5.LoginScreen());
    },
    OtpLoginScreenRoute.name: (entry) {
      var args = entry.routeData.argsAs<OtpLoginScreenRouteArgs>(
          orElse: () => OtpLoginScreenRouteArgs());
      return _i1.CupertinoPageX(
          entry: entry,
          child:
              _i6.OtpLoginScreen(phoneNumber: args.phoneNumber, key: args.key));
    },
    ProductDetailPageRoute.name: (entry) {
      var args = entry.routeData.argsAs<ProductDetailPageRouteArgs>();
      return _i1.CupertinoPageX(
          entry: entry,
          child: _i7.ProductDetailPage(args.productModel, key: args.key));
    },
    AddUserDetailScreenRoute.name: (entry) {
      var args = entry.routeData.argsAs<AddUserDetailScreenRouteArgs>();
      return _i1.CupertinoPageX(
          entry: entry,
          child: _i8.AddUserDetailScreen(args.newAddress, key: args.key));
    },
    CartScreenRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i9.CartScreen());
    },
    AllProductListScreenRoute.name: (entry) {
      var args = entry.routeData.argsAs<AllProductListScreenRouteArgs>(
          orElse: () => AllProductListScreenRouteArgs());
      return _i1.CupertinoPageX(
          entry: entry,
          child: _i10.AllProductListScreen(
              productCondition: args.productCondition));
    },
    SearchItemScreenRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i11.SearchItemScreen());
    },
    MyAddressScreenRoute.name: (entry) {
      var args = entry.routeData.argsAs<MyAddressScreenRouteArgs>(
          orElse: () => MyAddressScreenRouteArgs());
      return _i1.CupertinoPageX(
          entry: entry,
          child: _i12.MyAddressScreen(selectedAddress: args.selectedAddress));
    },
    AddAddressScreenRoute.name: (entry) {
      var args = entry.routeData.argsAs<AddAddressScreenRouteArgs>();
      return _i1.CupertinoPageX(
          entry: entry,
          child: _i13.AddAddressScreen(args.newAddress, args.accountDetails,
              editAddress: args.editAddress));
    },
    MyOrdersScreenRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i14.MyOrdersScreen());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(CheckStatusScreenRoute.name,
            path: '/check-status-screen'),
        _i1.RouteConfig(MainHomeScreenRoute.name, path: '/main-home-screen'),
        _i1.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i1.RouteConfig(OtpLoginScreenRoute.name, path: '/otp-login-screen'),
        _i1.RouteConfig(ProductDetailPageRoute.name,
            path: '/product-detail-page'),
        _i1.RouteConfig(AddUserDetailScreenRoute.name,
            path: '/add-user-detail-screen'),
        _i1.RouteConfig(CartScreenRoute.name, path: '/cart-screen'),
        _i1.RouteConfig(AllProductListScreenRoute.name,
            path: '/all-product-list-screen'),
        _i1.RouteConfig(SearchItemScreenRoute.name,
            path: '/search-item-screen'),
        _i1.RouteConfig(MyAddressScreenRoute.name, path: '/my-address-screen'),
        _i1.RouteConfig(AddAddressScreenRoute.name,
            path: '/add-address-screen'),
        _i1.RouteConfig(MyOrdersScreenRoute.name, path: '/my-orders-screen')
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo<SplashScreenRouteArgs> {
  SplashScreenRoute({_i15.Key? key})
      : super(name, path: '/', args: SplashScreenRouteArgs(key: key));

  static const String name = 'SplashScreenRoute';
}

class SplashScreenRouteArgs {
  const SplashScreenRouteArgs({this.key});

  final _i15.Key? key;
}

class CheckStatusScreenRoute
    extends _i1.PageRouteInfo<CheckStatusScreenRouteArgs> {
  CheckStatusScreenRoute({bool checkForAccountStatusOnly})
      : super(name,
            path: '/check-status-screen',
            args: CheckStatusScreenRouteArgs(
                checkForAccountStatusOnly: checkForAccountStatusOnly));

  static const String name = 'CheckStatusScreenRoute';
}

class CheckStatusScreenRouteArgs {
  const CheckStatusScreenRouteArgs({this.checkForAccountStatusOnly});

  final bool checkForAccountStatusOnly;
}

class MainHomeScreenRoute extends _i1.PageRouteInfo {
  const MainHomeScreenRoute() : super(name, path: '/main-home-screen');

  static const String name = 'MainHomeScreenRoute';
}

class LoginScreenRoute extends _i1.PageRouteInfo {
  const LoginScreenRoute() : super(name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

class OtpLoginScreenRoute extends _i1.PageRouteInfo<OtpLoginScreenRouteArgs> {
  OtpLoginScreenRoute({String? phoneNumber, _i15.Key? key})
      : super(name,
            path: '/otp-login-screen',
            args: OtpLoginScreenRouteArgs(phoneNumber: phoneNumber, key: key));

  static const String name = 'OtpLoginScreenRoute';
}

class OtpLoginScreenRouteArgs {
  const OtpLoginScreenRouteArgs({this.phoneNumber, this.key});

  final String? phoneNumber;

  final _i15.Key? key;
}

class ProductDetailPageRoute
    extends _i1.PageRouteInfo<ProductDetailPageRouteArgs> {
  ProductDetailPageRoute(
      {required _i16.ProductModel productModel, _i15.Key? key})
      : super(name,
            path: '/product-detail-page',
            args: ProductDetailPageRouteArgs(
                productModel: productModel, key: key));

  static const String name = 'ProductDetailPageRoute';
}

class ProductDetailPageRouteArgs {
  const ProductDetailPageRouteArgs({required this.productModel, this.key});

  final _i16.ProductModel productModel;

  final _i15.Key? key;
}

class AddUserDetailScreenRoute
    extends _i1.PageRouteInfo<AddUserDetailScreenRouteArgs> {
  AddUserDetailScreenRoute({required bool newAddress, _i15.Key? key})
      : super(name,
            path: '/add-user-detail-screen',
            args:
                AddUserDetailScreenRouteArgs(newAddress: newAddress, key: key));

  static const String name = 'AddUserDetailScreenRoute';
}

class AddUserDetailScreenRouteArgs {
  const AddUserDetailScreenRouteArgs({required this.newAddress, this.key});

  final bool newAddress;

  final _i15.Key? key;
}

class CartScreenRoute extends _i1.PageRouteInfo {
  const CartScreenRoute() : super(name, path: '/cart-screen');

  static const String name = 'CartScreenRoute';
}

class AllProductListScreenRoute
    extends _i1.PageRouteInfo<AllProductListScreenRouteArgs> {
  AllProductListScreenRoute({String? productCondition})
      : super(name,
            path: '/all-product-list-screen',
            args: AllProductListScreenRouteArgs(
                productCondition: productCondition));

  static const String name = 'AllProductListScreenRoute';
}

class AllProductListScreenRouteArgs {
  const AllProductListScreenRouteArgs({this.productCondition});

  final String? productCondition;
}

class SearchItemScreenRoute extends _i1.PageRouteInfo {
  const SearchItemScreenRoute() : super(name, path: '/search-item-screen');

  static const String name = 'SearchItemScreenRoute';
}

class MyAddressScreenRoute extends _i1.PageRouteInfo<MyAddressScreenRouteArgs> {
  MyAddressScreenRoute({bool selectedAddress})
      : super(name,
            path: '/my-address-screen',
            args: MyAddressScreenRouteArgs(selectedAddress: selectedAddress));

  static const String name = 'MyAddressScreenRoute';
}

class MyAddressScreenRouteArgs {
  const MyAddressScreenRouteArgs({this.selectedAddress});

  final bool selectedAddress;
}

class AddAddressScreenRoute
    extends _i1.PageRouteInfo<AddAddressScreenRouteArgs> {
  AddAddressScreenRoute(
      {required bool newAddress,
      required _i17.AccountDetails accountDetails,
      _i17.Address? editAddress})
      : super(name,
            path: '/add-address-screen',
            args: AddAddressScreenRouteArgs(
                newAddress: newAddress,
                accountDetails: accountDetails,
                editAddress: editAddress));

  static const String name = 'AddAddressScreenRoute';
}

class AddAddressScreenRouteArgs {
  const AddAddressScreenRouteArgs(
      {required this.newAddress,
      required this.accountDetails,
      this.editAddress});

  final bool newAddress;

  final _i17.AccountDetails accountDetails;

  final _i17.Address? editAddress;
}

class MyOrdersScreenRoute extends _i1.PageRouteInfo {
  const MyOrdersScreenRoute() : super(name, path: '/my-orders-screen');

  static const String name = 'MyOrdersScreenRoute';
}
