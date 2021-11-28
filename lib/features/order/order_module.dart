import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/global_listener/global_listener.dart';
import 'package:fluttercommerce/features/module.dart';
import 'package:fluttercommerce/features/order/bloc/my_orders_cubit.dart';

import 'bloc/account_details_cubit.dart';

class OrderModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirebaseManager>();
    final globalListener = DI.container<GlobalListener>();

    DI.container
      ..registerFactory(() => MyOrdersCubit(firebaseRepo))
      ..registerLazySingleton(
          () => AccountDetailsCubit(firebaseRepo, globalListener));
  }
}