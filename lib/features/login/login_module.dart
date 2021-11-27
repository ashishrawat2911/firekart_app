import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/login/bloc/otp_login_cubit.dart';
import 'package:fluttercommerce/features/module.dart';

import 'bloc/phone_login_cubit.dart';

class LoginModule extends Module {
  @override
  void registerDependencies() {
    final firebaseManager = DI.container<FirebaseManager>();

    DI.container
      ..registerFactory(() => PhoneLoginCubit())
      ..registerFactory(() => OtpLoginCubit(firebaseManager));
  }
}
