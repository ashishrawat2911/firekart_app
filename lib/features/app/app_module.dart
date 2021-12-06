import 'package:fluttercommerce/core/global_listener/global_listener.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/crashlytics_service.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/res/global_listener_constants.dart';
import 'package:fluttercommerce/features/module.dart';

class AppModule extends Module {
  @override
  void registerDependencies() {
    DI.container
      ..registerFactory(() => FirebaseManager())
      ..registerFactory(() => CrashlyticsService(
            resolve<FirebaseManager>(),
          ))
      ..registerSingleton<GlobalListener>(GlobalListenerImpl());
  }

  @override
  void close() {
    super.close();
    resolve<GlobalListener>().close();
  }

  @override
  void registerGlobalListeners() {
    resolve<GlobalListener>()
      ..registerListener(GlobalListenerConstants.cartList)
      ..registerListener(GlobalListenerConstants.accountDetails);
  }
}
