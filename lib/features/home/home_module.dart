import 'package:fluttercommerce/core/global_listener/global_listener.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/home/bloc/dashboard_cubit.dart';
import 'package:fluttercommerce/features/home/bloc/home_cubit.dart';
import 'package:fluttercommerce/features/home/bloc/product_search_cubit.dart';
import 'package:fluttercommerce/features/module.dart';

class HomeModule extends Module {
  @override
  void registerDependencies() {
    DI.container
      ..registerFactory(() => HomeScreenCubit(DI.container<FirebaseManager>(), DI.container<GlobalListener>()))
      ..registerFactory(() => DashboardCubit(DI.container<FirebaseManager>()))
      ..registerFactory(() => ProductSearchCubit(DI.container<FirebaseManager>()));
  }
}
