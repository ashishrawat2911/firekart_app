import 'package:data/di/di.module.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@InjectableInit.microPackage(externalPackageModulesBefore: [
  ExternalModule(
    DataPackageModule,
  ),
])
void initMicroPackage() {}
