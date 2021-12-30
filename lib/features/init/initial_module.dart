import 'package:core/src/di/di.dart';
import 'package:network/network.dart';
import 'package:core/core.dart';

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
