import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/global_listener/global_listener.dart';
import 'package:fluttercommerce/features/home/bloc/dashboard_cubit.dart';
import 'package:fluttercommerce/features/home/bloc/home_cubit.dart';
import 'package:fluttercommerce/features/home/bloc/product_search_cubit.dart';
import 'package:fluttercommerce/features/module.dart';

class HomeModule extends Module {
  static const String dealOfTheDay = "deal_of_the_day";
  static const String topProducts = "top_products";
  static const String onSale = "on_sale";

  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirebaseManager>();
    final globalListener = DI.container<GlobalListener>();

    DI.container
      ..registerFactory(() => HomeScreenCubit(firebaseRepo, globalListener))
      ..registerFactory(() => DashboardCubit(firebaseRepo), instanceName: dealOfTheDay)
      ..registerFactory(() => DashboardCubit(firebaseRepo), instanceName: topProducts)
      ..registerFactory(() => DashboardCubit(firebaseRepo), instanceName: onSale);
    DI.container.registerFactory(() => ProductSearchCubit(firebaseRepo));
  }
}
