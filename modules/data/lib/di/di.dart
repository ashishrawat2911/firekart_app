import 'package:injectable/injectable.dart';

@InjectableInit.microPackage()
void registerCoreDependencies() {}

class DIConstants {
  static const String baseUrl = 'baseUrl';
}
