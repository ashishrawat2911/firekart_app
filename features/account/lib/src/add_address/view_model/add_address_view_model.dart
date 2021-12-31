import 'package:account/src/add_address/state/add_address_state.dart';
import 'package:core/core.dart';
import 'package:navigation/navigation.dart';
import 'package:network/network.dart';

class AddAddressViewModel extends StateManager<AddAddressState> {
  AddAddressViewModel(this._firebaseManager) : super(const AddAddressState());

  final FirebaseManager _firebaseManager;

  Future<void> saveAddress(
      AccountDetails accountDetails, Address address) async {
    state = state.copyWith(buttonLoading: true);

    if (address.isDefault) {
      List.generate(accountDetails.addresses.length, (index) {
        accountDetails.addresses[index].isDefault = false;
      });
    }
    accountDetails.addresses.add(address);
    await _firebaseManager.addUserDetails(accountDetails).then((value) {
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
