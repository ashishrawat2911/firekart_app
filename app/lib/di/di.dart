import 'package:core/di/di.module.dart';
import 'package:domain/di/di.module.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/di/di.module.dart';
import 'di.config.dart';

@InjectableInit(asExtension: true, externalPackageModules: [
  CorePackageModule,
  PresentationPackageModule,
])
Future<void> registerDependencies() async {
  await _getIt.init();
}

final GetIt _getIt = GetIt.I;
