import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/src/bloc/my_address/my_address.dart';
import 'package:fluttercommerce/src/bloc/selected_address/account_details_cubit.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/models/account_details_model.dart';
import 'package:fluttercommerce/src/repository/auth_repository.dart';
import 'package:fluttercommerce/src/repository/firestore_repository.dart';

class MyAddressCubit extends Cubit<MyAddressState> {
  var firebaseRepo = AppInjector.get<FirestoreRepository>();
  var accountDetailsCubit = AppInjector.get<AccountDetailsCubit>();
  var authRepo = AppInjector.get<AuthRepository>();

  MyAddressCubit() : super(MyAddressState.loading());

  listenToAccountDetails() async {
    accountDetailsCubit.listen((state) {
      emit(MyAddressState.showAccountDetails(state.accountDetails));
    });
  }

  fetchAccountDetails() async {
    try {
      AccountDetails accountDetails = await firebaseRepo.fetchUserDetails();
      accountDetails.addresses = accountDetails.addresses.reversed.toList();
      emit(MyAddressState.showAccountDetails(accountDetails));
    } catch (e) {
      emit(MyAddressState.error(e.toString()));
    }
  }
}
