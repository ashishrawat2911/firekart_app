import 'package:auto_route/annotations.dart';
import 'package:fluttercommerce/features/account/add_address/view/add_address_screen.dart';
import 'package:fluttercommerce/features/account/my_address/view/my_address_screen.dart';
import 'package:fluttercommerce/features/cart/screen/cart_screen.dart';
import 'package:fluttercommerce/features/home/screen/home_screen.dart';
import 'package:fluttercommerce/features/home/screen/search_screen.dart';
import 'package:fluttercommerce/features/init/check_status/view/check_status_check_screen.dart';
import 'package:fluttercommerce/features/init/splash/view/splash_screen.dart';
import 'package:fluttercommerce/features/login/phone_login/view/phone_login_screen.dart';
import 'package:fluttercommerce/features/login/otp_login/view/otp_login_screen.dart';
import 'package:fluttercommerce/features/order/screen/my_orders_screen.dart';
import 'package:fluttercommerce/features/product/product_list/view/all_product_list_screen.dart';
import 'package:fluttercommerce/features/product/product_detail/view/product_detail_page.dart';
import 'package:fluttercommerce/features/account/add_account_detail/view/add_user_detail_screen.dart';

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
    CupertinoRoute(page: HomeScreen),
    CupertinoRoute(page: LoginScreen),
    CupertinoRoute(page: OtpLoginScreen),
    CupertinoRoute(page: ProductDetailPage),
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
