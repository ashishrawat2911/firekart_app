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
    CupertinoRoute<dynamic>(
      page: SplashScreen,
      initial: true,
    ),
    CupertinoRoute<dynamic>(page: CheckStatusScreen),
    CupertinoRoute<dynamic>(page: LoginScreen),
    CupertinoRoute<dynamic>(page: OtpLoginScreen),
    CupertinoRoute<dynamic>(page: HomeScreen),
    CupertinoRoute<dynamic>(page: DashboardScreen),
    CupertinoRoute<dynamic>(page: CartScreen),
    CupertinoRoute<dynamic>(page: AccountScreen),
    CupertinoRoute<dynamic>(page: SearchItemScreen),
    CupertinoRoute<dynamic>(page: ProductDetailPage),
    CupertinoRoute<dynamic>(page: AddUserDetailScreen),
    CupertinoRoute<dynamic>(page: AllProductListScreen),
    CupertinoRoute<dynamic>(page: MyAddressScreen),
    CupertinoRoute<dynamic>(page: AddAddressScreen),
    CupertinoRoute<dynamic>(page: MyOrdersScreen),
  ],
  replaceInRouteName: 'Routes',
)
class $AppRouter {}
