import 'package:core/src/di/di.dart';
import 'package:network/network.dart';
import 'package:core/core.dart';
import 'package:fluttercommerce/features/order/bloc/my_orders_cubit.dart';

class OrderModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirebaseManager>();

    DI.container.registerFactory(() => MyOrdersCubit(firebaseRepo));
  }
}
