import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/module.dart';
import 'package:fluttercommerce/features/order/bloc/my_orders_cubit.dart';

import 'bloc/account_details_cubit.dart';

class OrderModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirebaseManager>();

    DI.container
      ..registerFactory(() => MyOrdersCubit(firebaseRepo))
      ..registerLazySingleton(() => AccountDetailsCubit(firebaseRepo));
  }
}
