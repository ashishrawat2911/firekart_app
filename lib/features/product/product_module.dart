import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/module.dart';
import 'package:fluttercommerce/features/product/product_detail/view_model/product_view_model.dart';
import 'package:fluttercommerce/features/product/product_list/view_model/all_product_cubit.dart';

class ProductModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirebaseManager>();

    DI.container
      ..registerFactory(() => ProductViewModel(firebaseRepo))
      ..registerFactory(() => AllProductCubit(firebaseRepo));
  }
}
