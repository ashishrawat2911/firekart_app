import 'package:network/network.dart';
import 'package:core/core.dart';

import 'bloc/cart_cubit.dart';

class CheckoutModule extends Module {
  @override
  void registerDependencies() {
    DI.container.registerSingleton((container) => CartCubit(
          container.get<FirebaseManager>(),
          container.get<GlobalListener>(),
        ));
  }
}
