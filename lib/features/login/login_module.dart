import 'package:fluttercommerce/features/app/repo/auth_repository.dart';
import 'package:fluttercommerce/features/login/bloc/otp_login_cubit.dart';
import 'package:fluttercommerce/features/module.dart';
import 'package:fluttercommerce/di/di.dart';

import 'bloc/phone_login_cubit.dart';

class LoginModule extends Module {
  @override
  void registerDependencies() {
    final authRepo = DI.container<AuthRepository>();

    DI.container
      ..registerFactory(() => PhoneLoginCubit())
      ..registerFactory(() => OtpLoginCubit(authRepo));
  }
}
