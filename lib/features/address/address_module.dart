import 'package:fluttercommerce/features/address/bloc/add_account_details_cubit.dart';
import 'package:fluttercommerce/features/address/bloc/add_address_cubit.dart';
import 'package:fluttercommerce/features/address/bloc/address_card_cubit.dart';
import 'package:fluttercommerce/features/address/bloc/my_address_cubit.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/module.dart';

class AddressModule extends Module {
  @override
  void registerDependencies() {
    resolve()
      ..registerFactory(() => AddAccountDetailsCubit(resolve<FirebaseManager>()))
      ..registerFactory(() => MyAddressCubit(resolve<FirebaseManager>()))
      ..registerFactory(() => AddAddressCubit(resolve<FirebaseManager>()))
      ..registerFactory(() => AddressCardCubit(resolve<FirebaseManager>()));
  }
}
