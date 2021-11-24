import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/address/state/add_account_details_state.dart';
import 'package:fluttercommerce/features/app/repo/auth_repository.dart';
import 'package:fluttercommerce/features/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/features/common/models/account_details_model.dart';
import 'package:fluttercommerce/core/utils/validator.dart';

class AddAccountDetailsCubit extends Cubit<AddAccountDetailsState> {
  FirestoreRepository _firebaseRepo;

  AuthRepository _authRepo;

  AddAccountDetailsCubit(this._firebaseRepo, this._authRepo)
      : super(const AddAccountDetailsState.idle());
  final Validator _validator = Validator();
  AccountDetails _accountDetails;

  void validateButton(String name) {
    if (_validator.validateName(name) == null) {
      emit(const ButtonEnabled());
    } else {
      emit(const ButtonDisabled());
    }
  }

  Future<void> loadPreviousData() async {
    emit(const AddAccountDetailsState.loading());
    _accountDetails = await _firebaseRepo.fetchUserDetails();
    emit(AddAccountDetailsState.editData(_accountDetails));
    validateButton(_accountDetails.name);
  }

  saveData(String name, {bool isEdit = false}) async {
    if (isEdit) {
      _accountDetails = AccountDetails();
    }
    _accountDetails.name = name;
    _accountDetails.phoneNumber = await _authRepo.getPhoneNumber();
    emit(const AddAccountDetailsState.saveDataLoading());
    await _firebaseRepo.addUserDetails(_accountDetails);
    await _authRepo.setAccountDetails(displayName: _accountDetails.name);
    emit(const AddAccountDetailsState.successful());
  }
}
