import 'package:account/src/my_address/state/my_address_state.dart';
import 'package:core/core.dart';
import 'package:network/network.dart';

class MyAddressViewModel extends StateManager<MyAddressState> {
  MyAddressViewModel(this.firebaseManager) : super(const MyAddressState());

  FirebaseManager firebaseManager;

  Future<void> listenToAccountDetails(AccountDetails accountDetails) async {
    setAddress(accountDetails);
  }

  void setAddress(AccountDetails accountDetails) {
    final List<AddressCardState> cardStates = [];

    for (int i = 0; i < accountDetails.addresses.length; i++) {
      cardStates.add(
          AddressCardState(address: accountDetails.addresses[i], index: i));
    }
    state = state.copyWith(
        accountDetails: accountDetails,
        addressStates: cardStates,
        screenLoading: false);
  }

  Future<void> fetchAccountDetails() async {
    state = state.copyWith(screenLoading: true);
    final AccountDetails accountDetails =
        await firebaseManager.fetchUserDetails();
    accountDetails.addresses = accountDetails.addresses.reversed.toList();
    setAddress(accountDetails);
    state = state.copyWith(screenLoading: false);
  }

  void deleteAddress(int index) {
    state.addressStates[index].copyWith(index: index, editLoading: true);
    state = state;

    state.accountDetails!.addresses.remove(state.addressStates[index].address);
    _saveData(state.accountDetails!);
    state.addressStates[index].copyWith(index: index, editLoading: false);
    state = state;
  }

  void setAsDefault(int index) {
    state.addressStates[index].copyWith(index: index, setDefaultLoading: true);
    state.accountDetails!.addresses[index].isDefault = true;

    List.generate(state.accountDetails!.addresses.length, (index) {
      if (index != index) {
        state.accountDetails!.addresses[index].isDefault = false;
      }
    });
    _saveData(state.accountDetails!);
  }

  void _saveData(AccountDetails accountDetails) {
    firebaseManager.addUserDetails(accountDetails).then((value) {
      fetchAccountDetails();
    }).catchError((e) {
      MessageHandler.showSnackBar(title: e.toString());
    });
  }
}
