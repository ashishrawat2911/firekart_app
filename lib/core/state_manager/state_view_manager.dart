import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/core/state_manager/state_manager.dart';
import 'package:fluttercommerce/di/di.dart';

typedef OnViewModelReady<V> = void Function(V viewModel);
typedef OnViewModelStateBuilder<V, S> = Widget Function(BuildContext context, V viewModel, S state);
typedef OnViewModelBuilder<V> = Widget Function(BuildContext context, V viewModel);
typedef OnStateListener<S> = void Function(BuildContext context, S state);
typedef BuilderCondition<S> = bool Function(S previous, S current);

class StateViewManager<C extends StateManager<S>, S> extends StatefulWidget {
  const StateViewManager({
    Key? key,
    required this.builder,
    this.initState,
    this.stateListener,
  }) : super(key: key);

  final OnViewModelReady? initState;
  final OnViewModelStateBuilder builder;
  final OnStateListener? stateListener;

  @override
  _StateViewManagerState createState() => _StateViewManagerState();
}

class _StateViewManagerState<C extends StateManager<S>, S> extends State<StateViewManager<C, S>> {
  final C viewModel = DI.container<C>();

  @override
  void initState() {
    super.initState();
    if (widget.initState != null) {
      widget.initState!(viewModel);
    }
  }

  @override
  Widget build(BuildContext context) {
    print('$this Widget Build');
    return StateBuilder<C, S>(
      builder: widget.builder,
      stateListener: widget.stateListener ?? (_, __) {},
    );
  }
}

class StateBuilder<V extends StateManager<S>, S> extends StatelessWidget {
  const StateBuilder({
    Key? key,
    required this.builder,
    this.stateListener,
    this.buildWhen,
  }) : super(key: key);

  final Widget Function(BuildContext context, V viewModel, S state) builder;
  final void Function(BuildContext context, S state)? stateListener;
  final BuilderCondition<S>? buildWhen;

  @override
  Widget build(BuildContext context) {
    final V viewModel = DI.container<V>();
    return BlocConsumer<V, S>(
      bloc: viewModel,
      builder: (context, state) => builder(context, viewModel, state),
      listener: stateListener ?? (_, __) {},
      buildWhen: buildWhen,
    );
  }
}

class StateProvider<V extends StateManager> extends StatefulWidget {
  const StateProvider({
    Key? key,
    this.child,
    this.onViewModelReady,
  }) : super(key: key);

  final Widget? child;
  final OnViewModelReady? onViewModelReady;

  @override
  State<StateProvider<V>> createState() => _StateProviderState<V>();
}

class _StateProviderState<V extends StateManager> extends State<StateProvider<V>> {
  final V viewModel = DI.container<V>();

  @override
  void initState() {
    super.initState();
    if (widget.onViewModelReady != null) {
      widget.onViewModelReady!(viewModel);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<V>.value(
      value: viewModel,
      child: widget.child,
    );
  }
}
