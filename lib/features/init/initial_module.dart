import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/module.dart';

import 'check_status/view_model/check_status_bloc.dart';
import 'splash/view_model/splash_bloc.dart';

class InitialModule extends Module {
  @override
  void registerDependencies() {
    DI.container
      ..registerFactory(() => SplashViewModel())
      ..registerFactory(() => CheckStatusBloc(DI.container<FirebaseManager>()));
  }
}
