import 'package:core/core.dart';
import 'package:intro/src/splash/view_model/splash_view_model.dart';
import 'package:network/network.dart';

import 'check_status/view_model/check_status_bloc.dart';
import 'dashboard/view_model/dashboard_view_model.dart';
import 'home/viewmodel/home_viewmodel.dart';
import 'search/view_model/product_search_viewmodel.dart';

class InitialModule extends Module {
  @override
  void registerDependencies() {
    DI.container
      ..registerFactory(() => SplashViewModel())
      ..registerFactory(() => CheckStatusViewModel(DI.container<FirebaseManager>()));
    DI.container
      ..registerFactory(() => HomeScreenViewModel(DI.container<FirebaseManager>(), DI.container<GlobalListener>()))
      ..registerFactory(() => DashboardViewModel(DI.container<FirebaseManager>()))
      ..registerFactory(() => ProductSearchViewModel(DI.container<FirebaseManager>()));
  }
}
