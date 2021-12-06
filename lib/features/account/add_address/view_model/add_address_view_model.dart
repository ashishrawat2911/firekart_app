import 'package:fluttercommerce/features/account/add_address/state/add_address_state.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/navigation/navigation_handler.dart';
import 'package:fluttercommerce/features/app/snackbar_handeler.dart';
import 'package:fluttercommerce/features/app/state_manager/state_manager.dart';
import 'package:fluttercommerce/features/common/models/account_details_model.dart';

class AddAddressViewModel extends StateManager<AddAddressState> {
  AddAddressViewModel(this._firebaseRepo) : super(const AddAddressState());

  final FirebaseManager _firebaseRepo;

  Future<void> saveAddress(
      AccountDetails accountDetails, Address address) async {
    state = state.copyWith(buttonLoading: true);

    if (address.isDefault) {
      List.generate(accountDetails.addresses.length, (index) {
        accountDetails.addresses[index].isDefault = false;
      });
    }
    accountDetails.addresses.add(address);
    await _firebaseRepo.addUserDetails(accountDetails).then((value) {
      NavigationHandler.pop(true);
    }).catchError((e) {
      MessageHandler.showSnackBar(title: e.toString());
    }).whenComplete(() {
      state = state.copyWith(buttonLoading: false);
    });
  }
}
