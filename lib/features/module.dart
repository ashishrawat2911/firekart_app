import 'package:auto_route/annotations.dart';
import 'package:fluttercommerce/features/address/screen/my_address_screen.dart';

import 'address/screen/add_address_screen.dart';

abstract class Module {
  void registerDependencies();

  List<AutoRoute> registerRoutes() {
    return [
      CupertinoRoute(page: MyAddressScreen),
      CupertinoRoute(page: AddAddressScreen),
    ];
  }
}
