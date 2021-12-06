import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/core/state_manager/state_manager.dart';

abstract class StateManagerWidget<C extends StateManager<S>, S> extends StatefulWidget {
  const StateManagerWidget({Key? key}) : super(key: key);

  @mustCallSuper
  void initState(C viewModel) {
    print('$this InitState');
  }

  @mustCallSuper
  void stateListener(BuildContext context, S state) {
    print('$this Listener $state');
  }

  Widget buildView(BuildContext context, C viewModel, S state);

  @override
  _StateManagerWidgetState createState() => _StateManagerWidgetState();
}

class _StateManagerWidgetState<C extends StateManager<S>, S>
    extends State<StateManagerWidget<C, S>> {
  final C viewModel = DI.container<C>();

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    widget.initState(viewModel);
  }

  @override
  Widget build(BuildContext context) {
    print('$this Widget Build');
    return BlocConsumer<C, S>(
      bloc: viewModel,
      builder: (context, state) {
        return widget.buildView(context, viewModel, state);
      },
      listener: widget.stateListener,
    );
  }
}
