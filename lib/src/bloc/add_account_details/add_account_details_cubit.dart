import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/src/bloc/add_account_details/add_account_details.dart';
import 'package:fluttercommerce/src/core/utils/validator.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/models/account_details_model.dart';
import 'package:fluttercommerce/src/repository/auth_repository.dart';
import 'package:fluttercommerce/src/repository/firestore_repository.dart';

class AddAccountDetailsCubit extends Cubit<AddAccountDetailsState> {
  var _firebaseRepo = AppInjector.get<FirestoreRepository>();
  var _authRepo = AppInjector.get<AuthRepository>();

  Validator _validator = Validator();

  AddAccountDetailsCubit() : super(AddAccountDetailsState.idle());
  late AccountDetails _accountDetails;

  validateButton(String name) {
    if (_validator.validateName(name) == null) {
      emit(ButtonEnabled());
    } else
      emit(ButtonDisabled());
  }

  loadPreviousData() async {
    emit(AddAccountDetailsState.loading());
    _accountDetails = await _firebaseRepo!.fetchUserDetails();
    emit(AddAccountDetailsState.editData(_accountDetails));
    validateButton(_accountDetails.name!);
  }

  saveData(String name, {bool isEdit = false}) async {
    if (isEdit) {
      _accountDetails = AccountDetails();
    }
    _accountDetails.name = name;
    _accountDetails.phoneNumber = await _authRepo!.getPhoneNumber();
    emit(AddAccountDetailsState.saveDataLoading());
    await _firebaseRepo!.addUserDetails(_accountDetails);
    await _authRepo!.setAccountDetails(displayName: _accountDetails.name!);
    emit(AddAccountDetailsState.successful());
  }
}
