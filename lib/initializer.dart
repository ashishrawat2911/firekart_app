import 'package:account/account.dart';
import 'package:checkout/checkout.dart';
import 'package:core/core.dart';
import 'package:fluttercommerce/global_module.dart';
import 'package:intro/intro.dart';
import 'package:login/login.dart';
import 'package:product/product.dart';

class Initializer {
  Initializer._();

  static final _modules = <Module>[
    /// Should call first as App level configuration will be defined
    GlobalModule(),

    InitialModule(),
    AddressModule(),
    CheckoutModule(),
    LoginModule(),
    ProductModule(),
  ];

  static void registerModules() {
    for (final module in _modules) {
      module.registerDependencies();
      module.registerGlobalListeners();
    }
  }

  static void closeModules() {
    for (final module in _modules) {
      module.close();
    }
  }
}
