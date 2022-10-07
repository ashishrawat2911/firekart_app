import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

@InjectableInit(asExtension: true)
Future<void> registerDependencies() async {
  _getIt.$initGetIt();
}

final GetIt _getIt = GetIt.I;

T inject<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) =>
    _getIt<T>(instanceName: instanceName, param1: param1, param2: param2);
