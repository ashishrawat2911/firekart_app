import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/module.dart';

import 'bloc/product_search_cubit.dart';

class SearchModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirebaseManager>();
    DI.container.registerFactory(() => ProductSearchCubit(firebaseRepo));
  }
}
