import 'package:fluttercommerce/core/navigation/navigation_handler.dart';
import 'package:fluttercommerce/core/state_manager/state_manager.dart';
import 'package:fluttercommerce/core/utils/validator.dart';
import 'package:fluttercommerce/features/account/add_account_detail/state/add_account_details_state.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/common/models/account_details_model.dart';

class AddAccountDetailsViewModel extends StateManager<AddAccountDetailsState> {
  AddAccountDetailsViewModel(this._firebaseRepo) : super(const AddAccountDetailsState.idle());

  final FirebaseManager _firebaseRepo;
  final Validator _validator = Validator();

  void validateButton(String name) {
    if (_validator.validateName(name) == null) {
      emit(const ButtonEnabled());
    } else {
      emit(const ButtonDisabled());
    }
  }

  Future<void> loadPreviousData() async {
    emit(const AddAccountDetailsState.loading());
    final AccountDetails _accountDetails = await _firebaseRepo.fetchUserDetails();
    emit(AddAccountDetailsState.editData(_accountDetails));
    validateButton(_accountDetails.name);
  }

  Future<void> saveData(String name, {bool isEdit = false}) async {
    final AccountDetails _accountDetails = AccountDetails(name: name, phoneNumber: _firebaseRepo.getPhoneNumber()!);

    emit(const AddAccountDetailsState.saveDataLoading());
    await _firebaseRepo.addUserDetails(_accountDetails);
    await _firebaseRepo.setAccountDetails(displayName: _accountDetails.name);

    if (isEdit) {
      NavigationHandler.navigateTo(const HomeScreenRoute(), navigationType: NavigationType.PushReplacement);
    } else {
      NavigationHandler.pop();
    }

    // emit(const AddAccountDetailsState.successful());
  }
}
