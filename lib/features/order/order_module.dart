import 'package:fluttercommerce/features/app/repo/auth_repository.dart';
import 'package:fluttercommerce/features/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/features/module.dart';
import 'package:fluttercommerce/features/order/bloc/my_orders_cubit.dart';
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
