import 'package:core/core.dart';
import 'package:intro/src/home/bloc/home_cubit.dart';
import 'package:intro/src/splash/view_model/splash_bloc.dart';
import 'package:network/network.dart';

import 'check_status/view_model/check_status_bloc.dart';
import 'home/bloc/dashboard_cubit.dart';
import 'home/bloc/product_search_cubit.dart';

class InitialModule extends Module {
  @override
  void registerDependencies() {
    DI.container
      ..registerFactory(() => SplashViewModel())
      ..registerFactory(() => CheckStatusBloc(DI.container<FirebaseManager>()));
    DI.container
      ..registerFactory(() => HomeScreenCubit(
          DI.container<FirebaseManager>(), DI.container<GlobalListener>()))
      ..registerFactory(() => DashboardCubit(DI.container<FirebaseManager>()))
      ..registerFactory(
          () => ProductSearchCubit(DI.container<FirebaseManager>()));
  }
}
