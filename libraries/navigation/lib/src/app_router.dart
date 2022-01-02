import 'package:account/account.dart';
import 'package:auto_route/annotations.dart';
import 'package:checkout/checkout.dart';
import 'package:intro/intro.dart';
import 'package:login/login.dart';
import 'package:product/product.dart';

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
