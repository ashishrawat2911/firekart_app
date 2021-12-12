import 'package:fluttercommerce/core/global_listener/global_listener.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/module.dart';

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
