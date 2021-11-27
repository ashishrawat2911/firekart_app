import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/module.dart';
import 'package:fluttercommerce/features/product/bloc/all_product_cubit.dart';

class ProductModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirebaseManager>();

    DI.container.registerFactory(() => AllProductCubit(firebaseRepo));
  }
}
