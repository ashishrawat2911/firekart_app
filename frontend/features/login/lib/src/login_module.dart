import 'package:core/core.dart';
import 'package:login/src/phone_login/view_model/phone_login_view_model.dart';
import 'package:network/network.dart';

import 'otp_login/view_model/otp_login_view_model.dart';

class LoginModule extends Module {
  @override
  void registerDependencies() {
    final firebaseManager = DI.container<FirebaseManager>();

    DI.container
      ..registerFactory(() => PhoneLoginViewModel())
      ..registerFactory(() => OtpLoginViewModel(firebaseManager));
  }
}
