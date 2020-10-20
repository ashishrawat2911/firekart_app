import 'package:auto_route/auto_route_annotations.dart';
import 'package:fluttercommerce/src/ui/screens/SearchScreen.dart';
import 'package:fluttercommerce/src/ui/screens/add_address_screen.dart';
import 'package:fluttercommerce/src/ui/screens/add_user_detail_screen.dart';
import 'package:fluttercommerce/src/ui/screens/all_product_list_screen.dart';
import 'package:fluttercommerce/src/ui/screens/cart_screen.dart';
import 'package:fluttercommerce/src/ui/screens/check_status_check_screen.dart';
import 'package:fluttercommerce/src/ui/screens/login_screen.dart';
import 'package:fluttercommerce/src/ui/screens/main_home_screen.dart';
import 'package:fluttercommerce/src/ui/screens/my_address_screen.dart';
import 'package:fluttercommerce/src/ui/screens/my_orders_screen.dart';
import 'package:fluttercommerce/src/ui/screens/otp_login_screen.dart';
import 'package:fluttercommerce/src/ui/screens/product_detail_page.dart';
import 'package:fluttercommerce/src/ui/screens/splash_screen.dart';

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
    CupertinoRoute(page: OTPLoginScreen),
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
