import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/login/otp_login/view_model/otp_login_view_model.dart';
import 'package:fluttercommerce/features/module.dart';

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
