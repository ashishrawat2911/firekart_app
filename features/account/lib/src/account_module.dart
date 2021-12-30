import 'package:core/core.dart';
import 'package:network/network.dart';

import 'add_account_detail/view_model/add_account_details_view_model.dart';
import 'add_address/view_model/add_address_view_model.dart';
import 'my_address/view_model/my_address_view_model.dart';

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
