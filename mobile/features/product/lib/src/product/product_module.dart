import 'package:core/core.dart';
import 'package:network/network.dart';
import 'package:product/src/product/product_detail/view_model/product_view_model.dart';
import 'package:product/src/product/product_list/view_model/all_product_cubit.dart';

class ProductModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirebaseManager>();

    DI.container
      ..registerFactory(() => ProductViewModel(firebaseRepo))
      ..registerFactory(() => AllProductCubit(firebaseRepo));
  }
}
