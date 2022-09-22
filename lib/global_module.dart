
import 'core/global_listener/global_listener.dart';
import 'core/module/module.dart';
import 'core/res/global_listener_constants.dart';
import 'core/utils/validator.dart';
import 'data/crashlytics/crashlytics_service.dart';
import 'data/firebase_manager/firestore_manager.dart';
import 'di/di.dart';

class GlobalModule extends Module {
  @override
  void registerDependencies() {
    DI.container
      ..registerFactory(() => FirebaseManager())
      ..registerFactory(() => CrashlyticsService(
            DI.container<FirebaseManager>(),
          ))
      ..registerSingleton<GlobalListener>(GlobalListenerImpl())
      ..registerFactory(() => Validator());
  }

  @override
  void close() {
    super.close();
    DI.container<GlobalListener>().close();
  }

  @override
  void registerGlobalListeners() {
    DI.container<GlobalListener>()
      ..registerListener(GlobalListenerConstants.cartList)
      ..registerListener(GlobalListenerConstants.accountDetails);
  }
}
