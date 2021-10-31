import 'package:fluttercommerce/modules/address/address_module.dart';
import 'package:fluttercommerce/modules/app/app_module.dart';
import 'package:fluttercommerce/modules/checkout/checkout_module.dart';
import 'package:fluttercommerce/modules/login/login_module.dart';
import 'package:fluttercommerce/modules/module.dart';
import 'package:fluttercommerce/modules/order/order_module.dart';
import 'package:fluttercommerce/modules/product/product_module.dart';
import 'package:fluttercommerce/modules/search/search_module.dart';

import 'home/home_module.dart';
import 'init/initial_module.dart';

class ModuleInit {
  ModuleInit._();

  static final _modules = <Module>[
    /// Should call first as App level configuration will be defined
    AppModule(),

    HomeModule(),
    InitialModule(),
    AddressModule(),
    CheckoutModule(),
    LoginModule(),
    OrderModule(),
    SearchModule(),
    ProductModule(),
  ];

  static void registerModules() {
    for (final module in _modules) {
      module.registerDependencies();
    }
  }
}
