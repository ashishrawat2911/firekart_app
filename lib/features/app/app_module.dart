import 'package:firebase_core/firebase_core.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/crashlytics_service.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/global_listener/global_listener.dart';
import 'package:fluttercommerce/features/module.dart';

class AppModule extends Module {
  @override
  void registerDependencies() {
    register();
    DI.container.registerSingleton<GlobalListener>(GlobalListenerImpl());
  }

  Future<void> register() async {

    DI.container.registerFactory(() => FirebaseManager());
    final firebaseManager = DI.container<FirebaseManager>();
    DI.container.registerFactory(() => CrashlyticsService(firebaseManager));
  }

  @override
  void close() {
    super.close();
    DI.container<GlobalListener>().close();
  }
}
