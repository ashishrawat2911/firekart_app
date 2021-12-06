import 'package:fluttercommerce/di/di.dart';

abstract class Module {
  T resolve<T>() {
    return DI.container<T>();
  }

  void registerDependencies();

  void close() {}

  void registerGlobalListeners() {}
}
