import 'package:core/di/di.module.dart';
import 'package:domain/di/di.module.dart';
import 'package:injectable/injectable.dart';

@InjectableInit.microPackage(externalPackageModulesBefore: [
], externalPackageModulesAfter: [
])
void registerCoreDependencies() {}

class DIConstants {
  static const String baseUrl = 'baseUrl';
}
