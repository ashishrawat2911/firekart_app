import 'package:fluttercommerce/features/app/state_manager/state_manager.dart';
import 'package:fluttercommerce/features/login/state/phone_login_state.dart';

class PhoneLoginCubit extends StateManager<PhoneLoginState> {
  PhoneLoginCubit() : super(const PhoneLoginState());

  void validateButton(String phoneNumber) {
    if (phoneNumber.isNotEmpty && phoneNumber.length == 10) {
      state = state.copyWith(isButtonEnabled: true);
    } else {
      state = state.copyWith(isButtonEnabled: false);
    }
  }
}
