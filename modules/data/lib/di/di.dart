import 'package:core/di/di.module.dart';
import 'package:domain/di/di.module.dart';
import 'package:injectable/injectable.dart';

@InjectableInit.microPackage(externalPackageModulesBefore: [
  ExternalModule(CorePackageModule),
], externalPackageModulesAfter: [
  ExternalModule(DomainPackageModule),
])
void registerCoreDependencies() {}

class DIConstants {
  static const String baseUrl = 'baseUrl';
}
