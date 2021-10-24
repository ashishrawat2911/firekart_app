import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/modules/address/bloc/add_account_details_cubit.dart';
import 'package:fluttercommerce/modules/address/bloc/add_address_cubit.dart';
import 'package:fluttercommerce/modules/address/bloc/address_card_cubit.dart';
import 'package:fluttercommerce/modules/address/bloc/my_address_cubit.dart';
import 'package:fluttercommerce/modules/app/repo/auth_repository.dart';
import 'package:fluttercommerce/modules/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/modules/module.dart';

class AddressModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirestoreRepository>();
    final authRepo = DI.container<AuthRepository>();

    DI.container
      ..registerFactory(() => AddAccountDetailsCubit(firebaseRepo, authRepo))
      ..registerFactory(() => MyAddressCubit(firebaseRepo))
      ..registerFactory(() => AddAddressCubit(firebaseRepo))
      ..registerFactory(() => AddressCardCubit(firebaseRepo));
  }
}
