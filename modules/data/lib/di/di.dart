import 'package:domain/di/di.module.dart';
import 'package:core/di/di.module.dart';
import 'package:injectable/injectable.dart';

@InjectableInit.microPackage()
void registerCoreDependencies() {}

class DIConstants {
  static const String baseUrl = 'baseUrl';
}
