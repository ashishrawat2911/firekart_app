import 'package:fluttercommerce/core/utils/validator.dart';
import 'package:fluttercommerce/domain/models/account_details_model.dart';
import 'package:fluttercommerce/domain/usecases/set_account_details_usecase.dart';
import 'package:fluttercommerce/domain/usecases/set_user_profile_data_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/state_manager/state_manager.dart';
import '../../../../domain/usecases/get_account_details_usecase.dart';
import '../../../../domain/usecases/get_current_user_phone_number_usecase.dart';
import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';
import '../state/add_account_details_state.dart';

@injectable
class AddAccountDetailsViewModel extends StateManager<AddAccountDetailsState> {
  AddAccountDetailsViewModel(
    this._setAccountDetailsUseCase,
    this._getAccountDetailsUseCase,
    this._setProfileUserDataUseCase,
    this._getCurrentUserPhoneNumberUseCase,
  ) : super(const AddAccountDetailsState.idle());

  final SetAccountDetailsUseCase _setAccountDetailsUseCase;
  final GetAccountDetailsUseCase _getAccountDetailsUseCase;
  final SetProfileUserDataUseCase _setProfileUserDataUseCase;
  final GetCurrentUserPhoneNumberUseCase _getCurrentUserPhoneNumberUseCase;

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
    final AccountDetailsModel _accountDetails = await _getAccountDetailsUseCase.execute();
    state = (AddAccountDetailsState.editData(_accountDetails));
    validateButton(_accountDetails.name);
  }

  Future<void> saveData(String name, {bool isEdit = false}) async {
    final AccountDetailsModel _accountDetails =
        AccountDetailsModel(name: name, phoneNumber: _getCurrentUserPhoneNumberUseCase.execute());

    state = (const AddAccountDetailsState.saveDataLoading());
    await _setAccountDetailsUseCase.execute(_accountDetails);
    await _setProfileUserDataUseCase.execute(displayName: _accountDetails.name);

    if (isEdit) {
      NavigationHandler.navigateTo(const HomeScreenRoute(), navigationType: NavigationType.pushReplacement);
    } else {
      NavigationHandler.pop();
    }
  }
}
