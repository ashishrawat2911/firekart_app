import 'package:fluttercommerce/core/state_manager/view_model.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

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
