import 'package:core/src/message_handler/message_handler.dart';
import 'package:navigation/navigation.dart';
import 'package:core/src/state_manager/state_manager.dart';
import 'package:fluttercommerce/features/account/add_address/state/add_address_state.dart';
import 'package:network/network.dart';
import 'package:network/src/models/account_details_model.dart';

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

  void setDefault(bool isDefault) {
    state.copyWith(setAsDefault: isDefault);
  }
}
