import 'package:injectable/injectable.dart';

import '../../../../core/message_handler/message_handler.dart';
import '../../../../core/state_manager/state_manager.dart';
import '../../../../data/models/account_details_model.dart';
import '../../../../domain/usecases/get_account_details_usecase.dart';
import '../../../../domain/usecases/set_account_details_usecase.dart';
import '../state/my_address_state.dart';

@injectable
class MyAddressViewModel extends StateManager<MyAddressState> {
  MyAddressViewModel(this._getAccountDetailsUseCase, this._setAccountDetailsUseCase) : super(const MyAddressState());

  final GetAccountDetailsUseCase _getAccountDetailsUseCase;
  final SetAccountDetailsUseCase _setAccountDetailsUseCase;

  Future<void> listenToAccountDetails(AccountDetails accountDetails) async {
    setAddress(accountDetails);
  }

  void setAddress(AccountDetails accountDetails) {
    final List<AddressCardState> cardStates = [];

    for (int i = 0; i < accountDetails.addresses.length; i++) {
      cardStates.add(AddressCardState(address: accountDetails.addresses[i], index: i));
    }
    state = state.copyWith(accountDetails: accountDetails, addressStates: cardStates, screenLoading: false);
  }

  Future<void> fetchAccountDetails() async {
    state = state.copyWith(screenLoading: true);
    final AccountDetails accountDetails = await _getAccountDetailsUseCase.execute();
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
    _setAccountDetailsUseCase.execute(accountDetails).then((value) {
      fetchAccountDetails();
    }).catchError((e) {
      MessageHandler.showSnackBar(title: e.toString());
    });
  }
}
