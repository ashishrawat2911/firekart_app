import 'package:fluttercommerce/core/utils/validator.dart';
import 'package:fluttercommerce/data/models/account_details_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/state_manager/state_manager.dart';
import '../../../../data/firebase_manager/firestore_manager.dart';
import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';
import '../state/add_account_details_state.dart';

@injectable
class AddAccountDetailsViewModel extends StateManager<AddAccountDetailsState> {
  AddAccountDetailsViewModel(this._firebaseManager) : super(const AddAccountDetailsState.idle());

  final FirebaseManager _firebaseManager;
  final Validator _validator = Validator();

  void validateButton(String name) {
    if (_validator.validateName(name) == null) {
      state = (const ButtonEnabled());
    } else {
      state = (const ButtonDisabled());
    }
  }

  Future<void> loadPreviousData() async {
    state = (const AddAccountDetailsState.loading());
    final AccountDetails _accountDetails = await _firebaseManager.fetchUserDetails();
    state = (AddAccountDetailsState.editData(_accountDetails));
    validateButton(_accountDetails.name);
  }

  Future<void> saveData(String name, {bool isEdit = false}) async {
    final AccountDetails _accountDetails = AccountDetails(name: name, phoneNumber: _firebaseManager.getPhoneNumber()!);

    state = (const AddAccountDetailsState.saveDataLoading());
    await _firebaseManager.addUserDetails(_accountDetails);
    await _firebaseManager.setAccountDetails(displayName: _accountDetails.name);

    if (isEdit) {
      NavigationHandler.navigateTo(const HomeScreenRoute(), navigationType: NavigationType.pushReplacement);
    } else {
      NavigationHandler.pop();
    }

    // state =(const AddAccountDetailsState.successful());
  }
}
