import 'package:firebase_impl/di/di.module.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@InjectableInit.microPackage(
  externalPackageModulesBefore: [
    ExternalModule(FirebaseImplPackageModule),
  ],
)
void initMicroPackage() {}
