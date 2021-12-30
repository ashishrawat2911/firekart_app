import 'package:core/src/di/di.dart';
import 'package:fluttercommerce/features/account/add_account_detail/view_model/add_account_details_view_model.dart';
import 'package:fluttercommerce/features/account/add_address/view_model/add_address_view_model.dart';
import 'package:fluttercommerce/features/account/my_address/view_model/my_address_view_model.dart';
import 'package:network/network.dart';
import 'package:core/core.dart';

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
