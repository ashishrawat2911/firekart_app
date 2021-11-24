// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttercommerce/features/address/screen/add_address_screen.dart';
import 'package:fluttercommerce/features/address/screen/my_address_screen.dart';
import 'package:fluttercommerce/features/checkout/screen/cart_screen.dart';
import 'package:fluttercommerce/features/common/models/account_details_model.dart';
import 'package:fluttercommerce/features/common/models/product_model.dart';
import 'package:fluttercommerce/features/home/screen/main_home_screen.dart';
import 'package:fluttercommerce/features/init/screen/check_status_check_screen.dart';
import 'package:fluttercommerce/features/init/screen/splash_screen.dart';
import 'package:fluttercommerce/features/login/screen/login_screen.dart';
import 'package:fluttercommerce/features/login/screen/otp_login_screen.dart';
import 'package:fluttercommerce/features/order/screen/my_orders_screen.dart';
import 'package:fluttercommerce/features/product/screen/all_product_list_screen.dart';
import 'package:fluttercommerce/features/product/screen/product_detail_page.dart';
import 'package:fluttercommerce/features/search/screen/SearchScreen.dart';
import 'package:fluttercommerce/features/user/screen/add_user_detail_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String checkStatusScreen = '/check-status-screen';
  static const String mainHomeScreen = '/main-home-screen';
  static const String loginScreen = '/login-screen';
  static const String otpLoginScreen = '/otp-login-screen';
  static const String productDetailPage = '/product-detail-page';
  static const String addUserDetailScreen = '/add-user-detail-screen';
  static const String cartScreen = '/cart-screen';
  static const String allProductListScreen = '/all-product-list-screen';
  static const String searchItemScreen = '/search-item-screen';
  static const String myAddressScreen = '/my-address-screen';
  static const String addAddressScreen = '/add-address-screen';
  static const String myOrdersScreen = '/my-orders-screen';
  static const all = <String>{
    splashScreen,
    checkStatusScreen,
    mainHomeScreen,
    loginScreen,
    otpLoginScreen,
    productDetailPage,
    addUserDetailScreen,
    cartScreen,
    allProductListScreen,
    searchItemScreen,
    myAddressScreen,
    addAddressScreen,
    myOrdersScreen,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.checkStatusScreen, page: CheckStatusScreen),
    RouteDef(Routes.mainHomeScreen, page: MainHomeScreen),
    RouteDef(Routes.loginScreen, page: LoginScreen),
    RouteDef(Routes.otpLoginScreen, page: OtpLoginScreen),
    RouteDef(Routes.productDetailPage, page: ProductDetailPage),
    RouteDef(Routes.addUserDetailScreen, page: AddUserDetailScreen),
    RouteDef(Routes.cartScreen, page: CartScreen),
    RouteDef(Routes.allProductListScreen, page: AllProductListScreen),
    RouteDef(Routes.searchItemScreen, page: SearchItemScreen),
    RouteDef(Routes.myAddressScreen, page: MyAddressScreen),
    RouteDef(Routes.addAddressScreen, page: AddAddressScreen),
    RouteDef(Routes.myOrdersScreen, page: MyOrdersScreen),
  ];

  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    CheckStatusScreen: (data) {
      final args = data.getArgs<CheckStatusScreenArguments>(
        orElse: () => CheckStatusScreenArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CheckStatusScreen(
            checkForAccountStatusOnly: args.checkForAccountStatusOnly),
        settings: data,
      );
    },
    MainHomeScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => MainHomeScreen(),
        settings: data,
      );
    },
    LoginScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LoginScreen(),
        settings: data,
      );
    },
    OtpLoginScreen: (data) {
      final args = data.getArgs<OtpLoginScreenArguments>(
        orElse: () => OtpLoginScreenArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => OtpLoginScreen(phoneNumber: args.phoneNumber),
        settings: data,
      );
    },
    ProductDetailPage: (data) {
      final args = data.getArgs<ProductDetailPageArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ProductDetailPage(args.productModel),
        settings: data,
      );
    },
    AddUserDetailScreen: (data) {
      final args = data.getArgs<AddUserDetailScreenArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AddUserDetailScreen(args.newAddress),
        settings: data,
      );
    },
    CartScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CartScreen(),
        settings: data,
      );
    },
    AllProductListScreen: (data) {
      final args = data.getArgs<AllProductListScreenArguments>(
        orElse: () => AllProductListScreenArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) =>
            AllProductListScreen(productCondition: args.productCondition),
        settings: data,
      );
    },
    SearchItemScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SearchItemScreen(),
        settings: data,
      );
    },
    MyAddressScreen: (data) {
      final args = data.getArgs<MyAddressScreenArguments>(
        orElse: () => MyAddressScreenArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) =>
            MyAddressScreen(selectedAddress: args.selectedAddress),
        settings: data,
      );
    },
    AddAddressScreen: (data) {
      final args = data.getArgs<AddAddressScreenArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AddAddressScreen(
          args.newAddress,
          args.accountDetails,
          editAddress: args.editAddress,
        ),
        settings: data,
      );
    },
    MyOrdersScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => MyOrdersScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// CheckStatusScreen arguments holder class
class CheckStatusScreenArguments {
  final bool checkForAccountStatusOnly;

  CheckStatusScreenArguments({this.checkForAccountStatusOnly = false});
}

/// OtpLoginScreen arguments holder class
class OtpLoginScreenArguments {
  final String phoneNumber;

  OtpLoginScreenArguments({this.phoneNumber});
}

/// ProductDetailPage arguments holder class
class ProductDetailPageArguments {
  final ProductModel productModel;

  ProductDetailPageArguments({@required this.productModel});
}

/// AddUserDetailScreen arguments holder class
class AddUserDetailScreenArguments {
  final bool newAddress;

  AddUserDetailScreenArguments({@required this.newAddress});
}

/// AllProductListScreen arguments holder class
class AllProductListScreenArguments {
  final String productCondition;

  AllProductListScreenArguments({this.productCondition});
}

/// MyAddressScreen arguments holder class
class MyAddressScreenArguments {
  final bool selectedAddress;

  MyAddressScreenArguments({this.selectedAddress = false});
}

/// AddAddressScreen arguments holder class
class AddAddressScreenArguments {
  final bool newAddress;
  final AccountDetails accountDetails;
  final Address editAddress;

  AddAddressScreenArguments(
      {@required this.newAddress,
      @required this.accountDetails,
      this.editAddress});
}
