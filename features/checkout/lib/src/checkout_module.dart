import 'package:core/core.dart';
import 'package:network/network.dart';

import 'cart/view_model/cart_view_model.dart';
import 'order/view_model/my_orders_cubit.dart';

class CheckoutModule extends Module {
  @override
  void registerDependencies() {
    DI.container.registerSingleton(CartViewModel(
      DI.container<FirebaseManager>(),
      DI.container<GlobalListener>(),
    ));

    final firebaseRepo = DI.container<FirebaseManager>();

    DI.container.registerFactory(() => MyOrdersCubit(firebaseRepo));
  }
}
