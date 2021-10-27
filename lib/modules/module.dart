import 'package:fluttercommerce/di/di.dart';

abstract class Module {
  get di => DI.container;

  void registerDependencies();

  void registerViewModel() {}
}
