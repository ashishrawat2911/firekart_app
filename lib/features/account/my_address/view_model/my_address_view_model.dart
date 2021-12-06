import 'package:fluttercommerce/features/account/state/my_address_state.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/state_manager/state_manager.dart';
import 'package:fluttercommerce/features/common/models/account_details_model.dart';

class MyAddressViewModel extends StateManager<MyAddressState> {
  FirebaseManager firebaseRepo;

  MyAddressViewModel(this.firebaseRepo) : super(const MyAddressState.loading());

  Future<void> listenToAccountDetails(AccountDetails accountDetails) async {
    emit(MyAddressState.showAccountDetails(accountDetails));
  }

  Future<void> fetchAccountDetails() async {
    try {
      final AccountDetails accountDetails =
          await firebaseRepo.fetchUserDetails();
      accountDetails.addresses = accountDetails.addresses.reversed.toList();
      emit(MyAddressState.showAccountDetails(accountDetails));
    } catch (e) {
      emit(MyAddressState.error(e.toString()));
    }
  }
}
