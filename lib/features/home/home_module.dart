import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/home/bloc/bottom_bar_cubit.dart';
import 'package:fluttercommerce/features/home/bloc/home_page_cubit.dart';
import 'package:fluttercommerce/features/module.dart';

class HomeModule extends Module {
  static const String dealOfTheDay = "deal_of_the_day";
  static const String topProducts = "top_products";
  static const String onSale = "on_sale";

  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirebaseManager>();

    DI.container
      ..registerFactory(() => BottomBarCubit())
      ..registerFactory(() => ProductDataCubit(firebaseRepo),
          instanceName: dealOfTheDay)
      ..registerFactory(() => ProductDataCubit(firebaseRepo),
          instanceName: topProducts)
      ..registerFactory(() => ProductDataCubit(firebaseRepo),
          instanceName: onSale);
  }
}
