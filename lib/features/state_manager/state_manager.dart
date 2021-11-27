import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';

abstract class StateManager<S> extends Cubit<S> {
  StateManager(S state) : super(state);

  set state(S value) {
    emit(value);
  }
}

@immutable
abstract class BaseScreen<C extends StateManager<S>, S>
    extends StatelessWidget {
  BaseScreen({Key? key}) : super(key: key) {
    initState(bloc);
  }

  final C bloc = DI.container<C>();

  S get currentState => bloc.state;

  @mustCallSuper
  void initState(C bloc) {
    print('initState');
  }

  @override
  Widget build(BuildContext context) {
    print('$this Widget Build');
    return BlocConsumer<C, S>(
      builder: (context, state) {
        return buildView(context, bloc, state);
      },
      listener: listener,
    );
  }

  Widget buildView(BuildContext context, C bloc, S state);

  @mustCallSuper
  void listener(BuildContext context, S state) {
    print('state listener $state');
  }
}

class AScreenCubit extends StateManager<int> {
  AScreenCubit() : super(0);
}

class AScreen extends BaseScreen<AScreenCubit, int> {
  AScreen({Key? key}) : super(key: key);

  @override
  Widget buildView(BuildContext context, AScreenCubit bloc, int state) {
    return Container();
  }
}
