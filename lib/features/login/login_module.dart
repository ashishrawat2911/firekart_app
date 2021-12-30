import 'package:network/network.dart';
import 'package:fluttercommerce/features/login/otp_login/view_model/otp_login_view_model.dart';
import 'package:core/core.dart';

import 'phone_login/view_model/phone_login_view_model.dart';

class LoginModule extends Module {
  @override
  void registerDependencies() {
    final firebaseManager = DI.container<FirebaseManager>();

    DI.container
      ..registerFactory(() => PhoneLoginViewModel())
      ..registerFactory(() => OtpLoginViewModel(firebaseManager));
  }
}
