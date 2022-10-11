import 'package:injectable/injectable.dart';

import '../../../../core/state_manager/state_manager.dart';
import '../state/phone_login_state.dart';

@injectable
class PhoneLoginViewModel extends ViewModel<PhoneLoginState> {
  PhoneLoginViewModel() : super(const PhoneLoginState());

  void validateButton(String phoneNumber) {
    if (phoneNumber.isNotEmpty && phoneNumber.length == 10) {
      state = state.copyWith(isButtonEnabled: true);
    } else {
      state = state.copyWith(isButtonEnabled: false);
    }
  }
}
