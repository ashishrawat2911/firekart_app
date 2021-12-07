import 'package:fluttercommerce/core/state_manager/state_manager.dart';
import 'package:fluttercommerce/features/login/phone_login/state/phone_login_state.dart';

class PhoneLoginViewModel extends StateManager<PhoneLoginState> {
  PhoneLoginViewModel() : super(const PhoneLoginState());

  void validateButton(String phoneNumber) {
    if (phoneNumber.isNotEmpty && phoneNumber.length == 10) {
      state = state.copyWith(isButtonEnabled: true);
    } else {
      state = state.copyWith(isButtonEnabled: false);
    }
  }
}
