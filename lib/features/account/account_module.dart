import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/account/add_account_detail/view_model/add_account_details_view_model.dart';
import 'package:fluttercommerce/features/account/add_address/view_model/add_address_view_model.dart';
import 'package:fluttercommerce/features/account/my_address/view_model/my_address_view_model.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/module.dart';

class AddressModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirebaseManager>();

    DI.container
      ..registerFactory(() => AddAccountDetailsViewModel(firebaseRepo))
      ..registerFactory(() => MyAddressViewModel(firebaseRepo))
      ..registerFactory(() => AddAddressViewModel(firebaseRepo));
  }
}
