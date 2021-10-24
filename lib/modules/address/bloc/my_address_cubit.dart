import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/modules/address/state/my_address_state.dart';
import 'package:fluttercommerce/modules/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/modules/common/models/account_details_model.dart';

class MyAddressCubit extends Cubit<MyAddressState> {
  FirestoreRepository firebaseRepo;

  MyAddressCubit(this.firebaseRepo) : super(MyAddressState.loading());

  listenToAccountDetails(AccountDetails accountDetails) async {
    emit(MyAddressState.showAccountDetails(accountDetails));
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
