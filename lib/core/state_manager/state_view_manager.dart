import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/core/state_manager/state_manager.dart';

import '../../di/di.dart';

typedef OnViewModelReady<V> = void Function(V viewModel);
typedef OnViewModelStateBuilder<V, S> = Widget Function(BuildContext context, V viewModel, S state);
typedef OnViewModelBuilder<V> = Widget Function(BuildContext context, V viewModel);
typedef OnStateListener<S> = void Function(BuildContext context, S state);
typedef BuilderCondition<S> = bool Function(S previous, S current);

class StateManager<V extends ViewModel<S>, S> extends StatefulWidget {
  const StateManager({
    Key? key,
    this.builder,
    this.onViewModelReady,
    this.stateListener,
    this.buildWhen,
  }) : super(key: key);

  final OnViewModelReady<V>? onViewModelReady;
  final OnViewModelStateBuilder<V, S>? builder;
  final OnStateListener<S>? stateListener;
  final BuilderCondition<S>? buildWhen;

  @override
  State<StateManager<V, S>> createState() => _StateManagerState<V, S>();
}

class _StateManagerState<V extends ViewModel<S>, S> extends State<StateManager<V, S>> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<V>.value(
      value: inject<V>(),
      child: BlocConsumer<V, S>(
        builder: (context, state) {
          return widget.builder?.call(
                context,
                BlocProvider.of(context),
                state,
              ) ??
              Container();
        },
        listener: widget.stateListener ?? (_, __) {},
        buildWhen: widget.buildWhen,
      ),
    );
  }
}

class StateBuilder<V extends ViewModel<S>, S> extends StatelessWidget {
  const StateBuilder({
    Key? key,
    required this.builder,
    this.stateListener,
    this.buildWhen,
  }) : super(key: key);

  final OnViewModelStateBuilder<V, S> builder;
  final OnStateListener<S>? stateListener;
  final BuilderCondition<S>? buildWhen;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<V, S>(
      builder: (context, state) {
        return builder.call(
              context,
              BlocProvider.of(context),
              state,
            ) ??
            Container();
      },
      listener: stateListener ?? (_, __) {},
      buildWhen: buildWhen,
    );
  }
}
