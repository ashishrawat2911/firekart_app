import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/state_manager/state_manager.dart';

abstract class BaseScreen<C extends StateManager<S>, S> extends StatelessWidget {
  BaseScreen({Key? key}) : super(key: key) {
    initState(bloc);
  }

  final C bloc = DI.container<C>();

  S get currentState => bloc.state;

  @mustCallSuper
  void initState(C bloc) {
    print('$this initState');
  }

  @override
  Widget build(BuildContext context) {
    print('$this Widget Build');
    return BlocConsumer<C, S>(
      bloc: bloc,
      builder: (context, state) {
        return buildView(context, bloc, state);
      },
      listener: listener,
    );
  }

  Widget buildView(BuildContext context, C bloc, S state);

  @mustCallSuper
  void listener(BuildContext context, S state) {
    print('$this listener $state');
  }
}
