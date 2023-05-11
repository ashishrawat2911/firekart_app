import 'package:fluttercommerce/core/message_handler/message_handler.dart';
import 'package:fluttercommerce/core/state_manager/view_model.dart';
import 'package:fluttercommerce/domain/models/account_details_model.dart';
import 'package:fluttercommerce/domain/usecases/set_account_details_usecase.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../../../routes/navigation_handler.dart';
import '../state/add_address_state.dart';

@injectable
class AddAddressViewModel extends ViewModel<AddAddressState> {
  AddAddressViewModel(this._setAccountDetailsUseCase)
      : super(const AddAddressState());

  final SetAccountDetailsUseCase _setAccountDetailsUseCase;

  Future<void> saveAddress(
    AccountDetails accountDetails,
    Address address,
  ) async {
    state = state.copyWith(buttonLoading: true);

    if (address.isDefault) {
      List.generate(accountDetails.addresses.length, (index) {
        accountDetails.addresses[index].isDefault = false;
      });
    }
    accountDetails.addresses.add(address);
    await _setAccountDetailsUseCase.execute(accountDetails).then((value) {
      NavigationHandler.pop(true);
    }).catchError((e) {
      MessageHandler.showSnackBar(title: e.toString());
    }).whenComplete(() {
      state = state.copyWith(buttonLoading: false);
    });
  }

  void setDefault(bool isDefault) {
    state = state.copyWith(setAsDefault: isDefault);
  }
}
