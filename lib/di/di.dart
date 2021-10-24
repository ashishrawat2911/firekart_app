import 'package:get_it/get_it.dart';

typedef FactoryFunc<T> = T Function(GetIt container);

class DI {
  static final GetIt container = GetIt.I;
}
