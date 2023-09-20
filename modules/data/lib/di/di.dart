import 'package:injectable/injectable.dart';

@InjectableInit.microPackage(
  externalPackageModulesBefore: [],
  externalPackageModulesAfter: [],
)
void registerCoreDependencies() {}

class DIConstants {
  static const String baseUrl = 'baseUrl';
}
