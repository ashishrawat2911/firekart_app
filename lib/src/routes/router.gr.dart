// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluttercommerce/src/ui/screens/splash_screen.dart';
import 'package:fluttercommerce/src/ui/screens/check_status_check_screen.dart';
import 'package:fluttercommerce/src/ui/screens/main_home_screen.dart';
import 'package:fluttercommerce/src/ui/screens/login_screen.dart';
import 'package:fluttercommerce/src/ui/screens/otp_login_screen.dart';
import 'package:fluttercommerce/src/ui/screens/product_detail_page.dart';
import 'package:fluttercommerce/src/models/product_model.dart';
import 'package:fluttercommerce/src/ui/screens/add_user_detail_screen.dart';
import 'package:fluttercommerce/src/ui/screens/cart_screen.dart';
import 'package:fluttercommerce/src/ui/screens/all_product_list_screen.dart';
import 'package:fluttercommerce/src/ui/screens/SearchScreen.dart';
import 'package:fluttercommerce/src/ui/screens/my_address_screen.dart';
import 'package:fluttercommerce/src/ui/screens/add_address_screen.dart';
import 'package:fluttercommerce/src/models/account_details_model.dart';
import 'package:fluttercommerce/src/ui/screens/my_orders_screen.dart';

class Router {
  static const splashScreen = '/';
  static const checkStatusScreen = '/check-status-screen';
  static const mainHomeScreen = '/main-home-screen';
  static const loginScreen = '/login-screen';
  static const otpLoginScreen = '/otp-login-screen';
  static const productDetailPage = '/product-detail-page';
  static const addUserDetailScreen = '/add-user-detail-screen';
  static const cartScreen = '/cart-screen';
  static const allProductListScreen = '/all-product-list-screen';
  static const searchItemScreen = '/search-item-screen';
  static const myAddressScreen = '/my-address-screen';
  static const addAddressScreen = '/add-address-screen';
  static const myOrdersScreen = '/my-orders-screen';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.splashScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => SplashScreen(),
          settings: settings,
        );
      case Router.checkStatusScreen:
        if (hasInvalidArgs<bool>(args)) {
          return misTypedArgsRoute<bool>(args);
        }
        final typedArgs = args as bool ?? false;
        return CupertinoPageRoute<dynamic>(
          builder: (_) =>
              CheckStatusScreen(checkForAccountStatusOnly: typedArgs),
          settings: settings,
        );
      case Router.mainHomeScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => MainHomeScreen(),
          settings: settings,
        );
      case Router.loginScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => LoginScreen(),
          settings: settings,
        );
      case Router.otpLoginScreen:
        if (hasInvalidArgs<String>(args)) {
          return misTypedArgsRoute<String>(args);
        }
        final typedArgs = args as String;
        return CupertinoPageRoute<dynamic>(
          builder: (_) => OTPLoginScreen(phoneNumber: typedArgs),
          settings: settings,
        );
      case Router.productDetailPage:
        if (hasInvalidArgs<ProductModel>(args)) {
          return misTypedArgsRoute<ProductModel>(args);
        }
        final typedArgs = args as ProductModel;
        return CupertinoPageRoute<dynamic>(
          builder: (_) => ProductDetailPage(typedArgs),
          settings: settings,
        );
      case Router.addUserDetailScreen:
        if (hasInvalidArgs<bool>(args)) {
          return misTypedArgsRoute<bool>(args);
        }
        final typedArgs = args as bool;
        return CupertinoPageRoute<dynamic>(
          builder: (_) => AddUserDetailScreen(typedArgs),
          settings: settings,
        );
      case Router.cartScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => CartScreen(),
          settings: settings,
        );
      case Router.allProductListScreen:
        if (hasInvalidArgs<String>(args)) {
          return misTypedArgsRoute<String>(args);
        }
        final typedArgs = args as String;
        return CupertinoPageRoute<dynamic>(
          builder: (_) => AllProductListScreen(typedArgs),
          settings: settings,
        );
      case Router.searchItemScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => SearchItemScreen(),
          settings: settings,
        );
      case Router.myAddressScreen:
        if (hasInvalidArgs<bool>(args)) {
          return misTypedArgsRoute<bool>(args);
        }
        final typedArgs = args as bool ?? false;
        return CupertinoPageRoute<dynamic>(
          builder: (_) => MyAddressScreen(selectedAddress: typedArgs),
          settings: settings,
        );
      case Router.addAddressScreen:
        if (hasInvalidArgs<AddAddressScreenArguments>(args)) {
          return misTypedArgsRoute<AddAddressScreenArguments>(args);
        }
        final typedArgs =
            args as AddAddressScreenArguments ?? AddAddressScreenArguments();
        return CupertinoPageRoute<dynamic>(
          builder: (_) => AddAddressScreen(typedArgs.newAddress,
              typedArgs.accountDetails, typedArgs.editAddress),
          settings: settings,
        );
      case Router.myOrdersScreen:
        return CupertinoPageRoute<dynamic>(
          builder: (_) => MyOrdersScreen(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//AddAddressScreen arguments holder class
class AddAddressScreenArguments {
  final bool newAddress;
  final AccountDetails accountDetails;
  final Address editAddress;
  AddAddressScreenArguments(
      {this.newAddress, this.accountDetails, this.editAddress});
}
