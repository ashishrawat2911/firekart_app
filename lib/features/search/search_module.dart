import 'package:fluttercommerce/features/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/features/module.dart';
import 'package:fluttercommerce/di/di.dart';

import 'bloc/product_search_cubit.dart';

class SearchModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirestoreRepository>();
    DI.container.registerFactory(() => ProductSearchCubit(firebaseRepo));
  }
}
