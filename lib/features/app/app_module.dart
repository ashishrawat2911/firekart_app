import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/crashlytics_service.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/global_listener/global_listener.dart';
import 'package:fluttercommerce/features/module.dart';

class AppModule extends Module {
  @override
  void registerDependencies() {
    DI.container.registerFactory(() => FirebaseManager());
    final firebaseManager = DI.container<FirebaseManager>();
    DI.container.registerFactory(() => CrashlyticsService(firebaseManager));
    DI.container.registerSingleton<GlobalListener>(GlobalListenerImpl());
    registerGlobalListeners();
  }

  Future<void> register() async {}

  @override
  void close() {
    super.close();
    DI.container<GlobalListener>().close();
  }

  void registerGlobalListeners() {
    final globalListener = DI.container<GlobalListener>();
    globalListener.registerListener(GlobalListenerConstants.cartList);
    globalListener.registerListener(GlobalListenerConstants.accountDetails);
  }
}
