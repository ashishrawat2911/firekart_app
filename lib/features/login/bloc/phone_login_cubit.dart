import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/login/state/phone_login_state.dart';

class PhoneLoginCubit extends Cubit<PhoneLoginState> {
  PhoneLoginCubit() : super(PhoneLoginState.onButtonDisabled());

  validateButton(String phoneNumber) {
    if (phoneNumber.isNotEmpty && phoneNumber.length == 10) {
      emit(PhoneLoginState.onButtonEnabled());
    } else {
      emit(PhoneLoginState.onButtonDisabled());
    }
  }

  checkPhoneNumber(String phoneNumber) {}
}
