import 'package:auto_route/annotations.dart';

import '../features/accounts/view/account_screen.dart';
import '../features/add_account_detail/view/add_user_detail_screen.dart';
import '../features/add_address/view/add_address_screen.dart';
import '../features/cart/view/cart_screen.dart';
import '../features/check_status/view/check_status_check_screen.dart';
import '../features/dashboard/view/dashboard_screen.dart';
import '../features/home/screen/home_screen.dart';
import '../features/my_address/view/my_address_screen.dart';
import '../features/order/view/my_orders_screen.dart';
import '../features/otp_login/view/otp_login_screen.dart';
import '../features/phone_login/view/phone_login_screen.dart';
import '../features/product_detail/view/product_detail_page.dart';
import '../features/product_list/view/all_product_list_screen.dart';
import '../features/search/view/search_screen.dart';
import '../features/splash/view/splash_screen.dart';

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
    CupertinoRoute(page: LoginScreen),
    CupertinoRoute(page: OtpLoginScreen),
    CupertinoRoute(page: HomeScreen),
    CupertinoRoute(page: DashboardScreen),
    CupertinoRoute(page: CartScreen),
    CupertinoRoute(page: AccountScreen),
    CupertinoRoute(page: SearchItemScreen),
    CupertinoRoute(page: ProductDetailPage),
    CupertinoRoute(page: AddUserDetailScreen),
    CupertinoRoute(page: AllProductListScreen),
    CupertinoRoute(page: MyAddressScreen),
    CupertinoRoute(page: AddAddressScreen),
    CupertinoRoute(page: MyOrdersScreen),
  ],
  replaceInRouteName: "Routes",
)
class $AppRouter {}
