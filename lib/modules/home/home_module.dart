import 'package:fluttercommerce/modules/home/bloc/bottom_bar_cubit.dart';
import 'package:fluttercommerce/modules/home/bloc/home_page_cubit.dart';
import 'package:fluttercommerce/modules/module.dart';
import 'package:fluttercommerce/di/di.dart';

class HomeModule extends Module {
  static const String dealOfTheDay = "deal_of_the_day";
  static const String topProducts = "top_products";
  static const String onSale = "on_sale";

  @override
  void registerDependencies() {
    DI.container
      ..registerFactory(() => BottomBarCubit())
      ..registerFactory(() => ProductDataCubit(), instanceName: dealOfTheDay)
      ..registerFactory(() => ProductDataCubit(), instanceName: topProducts)
      ..registerFactory(() => ProductDataCubit(), instanceName: onSale);
  }
}
