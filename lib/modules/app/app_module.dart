import 'package:fluttercommerce/modules/app/repo/auth_repository.dart';
import 'package:fluttercommerce/modules/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/modules/module.dart';
import 'package:fluttercommerce/di/di.dart';

class AppModule extends Module {
  @override
  void registerDependencies() {
    DI.container
      ..registerFactory(() => FirestoreRepository())
      ..registerFactory(() => AuthRepository());
  }
}
