import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/src/bloc/add_account_details/add_account_details.dart';
import 'package:fluttercommerce/src/core/utils/validator.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/models/account_details_model.dart';
import 'package:fluttercommerce/src/repository/auth_repository.dart';
import 'package:fluttercommerce/src/repository/firestore_repository.dart';

class AddAccountDetailsCubit extends Cubit<AddAccountDetailsState> {
  AddAccountDetailsCubit() : super(const AddAccountDetailsState.idle());
  final _firebaseRepo = AppInjector.get<FirestoreRepository>();
  final _authRepo = AppInjector.get<AuthRepository>();
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
