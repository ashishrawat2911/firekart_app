import 'package:domain/di/di.module.dart';
import 'package:injectable/injectable.dart';

@InjectableInit.microPackage(externalPackageModulesBefore: [
  ExternalModule(
    DomainPackageModule,
  ),
])
initMicroPackage() {}
