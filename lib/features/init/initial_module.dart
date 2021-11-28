import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/module.dart';

import 'bloc/check_status_bloc.dart';
import 'bloc/splash_bloc.dart';

class InitialModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirebaseManager>();
    DI.container
      ..registerFactory(() => SplashBloc())
      ..registerFactory(() => CheckStatusBloc(firebaseRepo));
  }
}
