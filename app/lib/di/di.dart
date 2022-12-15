import 'package:presentation/di/di.module.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'di.config.dart';

@InjectableInit(
  asExtension: true,
  externalPackageModules: [
    PresentationPackageModule,
  ],
)
Future<void> registerDependencies() async {
  await _getIt.init();
}

final GetIt _getIt = GetIt.I;
