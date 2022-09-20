import 'package:flutter_bloc/flutter_bloc.dart';

class MyStateObserver extends BlocObserver {}

runStateObserver() {
  BlocOverrides.runZoned(
    () {},
    blocObserver: MyStateObserver(),
  );
}
