import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/core/state_manager/state_manager.dart';
import 'package:fluttercommerce/di/di.dart';

class StateViewManager<C extends StateManager<S>, S> extends StatefulWidget {
  const StateViewManager({
    Key? key,
    required this.builder,
    this.initState,
    this.stateListener,
  }) : super(key: key);

  final void Function(C viewModel)? initState;
  final Widget Function(BuildContext context, C viewModel, S state) builder;
  final void Function(BuildContext context, S state)? stateListener;

  @override
  _StateViewManagerState createState() => _StateViewManagerState();
}

class _StateViewManagerState<C extends StateManager<S>, S> extends State<StateViewManager<C, S>> {
  final C viewModel = DI.container<C>();

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    if (widget.initState != null) {
      widget.initState!(viewModel);
    }
  }

  @override
  Widget build(BuildContext context) {
    print('$this Widget Build');
    return BlocConsumer<C, S>(
      bloc: viewModel,
      builder: (context, state) {
        return widget.builder(context, viewModel, state);
      },
      listener: widget.stateListener ?? (_, __) {},
    );
  }
}
