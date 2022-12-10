import 'package:firebase_impl/di/di.module.dart';
import 'package:injectable/injectable.dart';

@InjectableInit.microPackage(externalPackageModulesBefore: [
  ExternalModule(FirebaseImplPackageModule),
])
initMicroPackage() {}
