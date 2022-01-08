import 'package:get_it/get_it.dart';

typedef FactoryFunc<T> = T Function(GetIt container);

class DI {
  DI._();

  static final GetIt container = GetIt.I;
}
//
//
// typedef FactoryFunc<T> = T Function(DI container);
//
// class DI {
//   DI._();
//
//   static final DI container = DI._();
//
//   final GetIt _getIt = GetIt.I;
//
//   static T get<T>() {
//     return _getIt<T>();
//   }
//
//   void registerSingleton<T extends Object>(FactoryFunc<T> factoryFunc) {
//     _getIt.registerSingleton<T>(factoryFunc(container));
//   }
//
//   void registerFactory<T extends Object>(FactoryFunc<T> factoryFunc, {String? instanceName}) {
//     _getIt.registerFactory<T>(() => factoryFunc(container), instanceName: instanceName);
//   }
// }
