import 'package:fluttercommerce/modules/app/repo/auth_repository.dart';
import 'package:fluttercommerce/modules/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/modules/module.dart';
import 'package:fluttercommerce/modules/order/bloc/my_orders_cubit.dart';
import 'package:fluttercommerce/di/di.dart';

import 'bloc/account_details_cubit.dart';

class OrderModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirestoreRepository>();
    final authRepo = DI.container<AuthRepository>();

    DI.container
      ..registerFactory(() => MyOrdersCubit(firebaseRepo))
      ..registerLazySingleton(
          () => AccountDetailsCubit(firebaseRepo, authRepo));
  }
}
