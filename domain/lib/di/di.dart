import 'package:data/di/di.module.dart';
import 'package:injectable/injectable.dart';

import 'di.module.dart';

@InjectableInit.microPackage(externalPackageModulesBefore: [
  ExternalModule(
    DataPackageModule,
  ),
])
initMicroPackage() {}
