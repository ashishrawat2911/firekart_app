import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/modules/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/modules/module.dart';
import 'package:fluttercommerce/modules/product/bloc/all_product_cubit.dart';

class ProductModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirestoreRepository>();

    DI.container.registerFactory(() => AllProductCubit(firebaseRepo));
  }
}
