import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/address/bloc/add_account_details_cubit.dart';
import 'package:fluttercommerce/features/address/bloc/add_address_cubit.dart';
import 'package:fluttercommerce/features/address/bloc/address_card_cubit.dart';
import 'package:fluttercommerce/features/address/bloc/my_address_cubit.dart';
import 'package:fluttercommerce/features/app/repo/auth_repository.dart';
import 'package:fluttercommerce/features/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/features/module.dart';

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
