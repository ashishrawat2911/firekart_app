import 'package:auto_route/auto_route_annotations.dart';
import 'package:fluttercommerce/modules/address/screen/add_address_screen.dart';
import 'package:fluttercommerce/modules/address/screen/my_address_screen.dart';
import 'package:fluttercommerce/modules/checkout/screen/cart_screen.dart';
import 'package:fluttercommerce/modules/home/screen/main_home_screen.dart';
import 'package:fluttercommerce/modules/init/check_status_check_screen.dart';
import 'package:fluttercommerce/modules/init/splash_screen.dart';
import 'package:fluttercommerce/modules/login/screen/login_screen.dart';
import 'package:fluttercommerce/modules/login/screen/otp_login_screen.dart';
import 'package:fluttercommerce/modules/order/screen/my_orders_screen.dart';
import 'package:fluttercommerce/modules/product/screen/all_product_list_screen.dart';
import 'package:fluttercommerce/modules/product/screen/product_detail_page.dart';
import 'package:fluttercommerce/modules/search/screen/SearchScreen.dart';
import 'package:fluttercommerce/modules/user/screen/add_user_detail_screen.dart';

/*
* Run this command in terminal
* flutter packages pub run build_runner build
* */

/*
* Run this command in terminal to watch auto change
* flutter packages pub run build_runner watch
* */

@CupertinoAutoRouter(
  routes: [
    CupertinoRoute(page: SplashScreen, initial: true),
    CupertinoRoute(page: CheckStatusScreen),
    CupertinoRoute(page: MainHomeScreen),
    CupertinoRoute(page: LoginScreen),
    CupertinoRoute(page: OtpLoginScreen),
    CupertinoRoute(
      page: ProductDetailPage,
    ),
    CupertinoRoute(page: AddUserDetailScreen),
    CupertinoRoute(page: CartScreen),
    CupertinoRoute(page: AllProductListScreen),
    CupertinoRoute(page: SearchItemScreen),
    CupertinoRoute(page: MyAddressScreen),
    CupertinoRoute(page: AddAddressScreen),
    CupertinoRoute(page: MyOrdersScreen),
  ],
  routesClassName: "Routes",
)
class $AppRouter {}
