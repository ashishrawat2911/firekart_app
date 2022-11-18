import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitObserver extends BlocObserver {}

void runStateObserver() {
  Bloc.observer = AppCubitObserver();
}
