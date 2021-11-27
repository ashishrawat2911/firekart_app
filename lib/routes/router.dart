import 'package:fluttercommerce/features/address/screen/add_address_screen.dart';
import 'package:fluttercommerce/features/address/screen/my_address_screen.dart';
import 'package:fluttercommerce/features/checkout/screen/cart_screen.dart';
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
import 'package:auto_route/annotations.dart';
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
  replaceInRouteName: "Routes",
)
class $AppRouter {}
