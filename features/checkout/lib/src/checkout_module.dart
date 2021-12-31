import 'package:network/network.dart';
import 'package:core/core.dart';

import 'cart/bloc/cart_cubit.dart';
import 'order/bloc/my_orders_cubit.dart';

class CheckoutModule extends Module {
  @override
  void registerDependencies() {
    DI.container.registerSingleton((container) => CartCubit(
          container.get<FirebaseManager>(),
          container.get<GlobalListener>(),
        ));
    final firebaseRepo = DI.container<FirebaseManager>();

    DI.container.registerFactory(() => MyOrdersCubit(firebaseRepo));
  }
}
