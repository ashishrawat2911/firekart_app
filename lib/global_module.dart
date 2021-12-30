import 'package:core/core.dart';
import 'package:fluttercommerce/crashlytics_service.dart';
import 'package:network/network.dart';

class GlobalModule extends Module {
  @override
  void registerDependencies() {
    DI.container
      ..registerFactory(() => FirebaseManager())
      ..registerFactory(() => CrashlyticsService(
            DI.container<FirebaseManager>(),
          ))
      ..registerSingleton<GlobalListener>(GlobalListenerImpl());
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
