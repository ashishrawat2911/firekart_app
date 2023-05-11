import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

@InjectableInit(
  asExtension: true,
)
Future<void> registerDependencies() async {
  await _getIt.init();
}

final GetIt _getIt = GetIt.I;
