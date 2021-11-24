import 'package:fluttercommerce/features/app/repo/auth_repository.dart';
import 'package:fluttercommerce/features/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/features/module.dart';
import 'package:fluttercommerce/di/di.dart';

class AppModule extends Module {
  @override
  void registerDependencies() {
    DI.container
      ..registerFactory(() => FirestoreRepository())
      ..registerFactory(() => AuthRepository());
  }
}
