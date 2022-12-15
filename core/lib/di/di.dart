import 'package:shared_dependencies/shared_dependencies.dart';

final GetIt getIt = GetIt.I;

T inject<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) =>
    getIt<T>(instanceName: instanceName, param1: param1, param2: param2);
