import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.I;

T inject<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) =>
    getIt<T>(instanceName: instanceName, param1: param1, param2: param2);
