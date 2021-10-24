import 'package:fluttercommerce/modules/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/modules/module.dart';
import 'package:fluttercommerce/di/di.dart';

import 'bloc/product_search_cubit.dart';

class SearchModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirestoreRepository>();
    DI.container.registerFactory(() => ProductSearchCubit(firebaseRepo));
  }
}
