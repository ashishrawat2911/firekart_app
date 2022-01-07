import 'package:core/core.dart';
import 'package:login/src/phone_login/state/phone_login_state.dart';

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
