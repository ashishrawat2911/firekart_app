import 'package:core/src/di/di.dart';
import 'package:core/src/state_manager/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef OnViewModelReady<V> = void Function(V viewModel);
typedef OnViewModelStateBuilder<V, S> = Widget Function(
    BuildContext context, V viewModel, S state);
typedef OnViewModelBuilder<V> = Widget Function(
    BuildContext context, V viewModel);
typedef OnStateListener<S> = void Function(BuildContext context, S state);
typedef BuilderCondition<S> = bool Function(S previous, S current);

class StateProvider<V extends StateManager> extends StatefulWidget {
  const StateProvider({
    Key? key,
    this.child,
    this.onViewModelReady,
  }) : super(key: key);

  final Widget? child;
  final OnViewModelReady<V>? onViewModelReady;

  @override
  State<StateProvider<V>> createState() => _StateProviderState<V>();
}

class _StateProviderState<V extends StateManager>
    extends State<StateProvider<V>> {
  final V viewModel = DI.container<V>();

  @override
  void initState() {
    super.initState();
    widget.onViewModelReady?.call(viewModel);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<V>.value(
      value: viewModel,
      child: widget.child,
    );
  }
}

class StateBuilder<V extends StateManager<S>, S> extends StatelessWidget {
  const StateBuilder._({
    Key? key,
    this.builder,
    this.onViewModelReady,
    this.stateListener,
    this.buildWhen,
    this.isProviderApplied = true,
    this.child,
  }) : super(key: key);

  factory StateBuilder.provider({
    Key? key,
    OnViewModelReady<V>? onViewModelReady,
    required Widget child,
  }) {
    return StateBuilder<V, S>._(
      key: key,
      child: child,
      isProviderApplied: true,
      onViewModelReady: onViewModelReady,
    );
  }

  factory StateBuilder({
    Key? key,
    OnViewModelReady<V>? onViewModelReady,
    required OnViewModelStateBuilder<V, S> builder,
    OnStateListener<S>? stateListener,
    BuilderCondition<S>? buildWhen,
    bool isProviderApplied = true,
  }) {
    return StateBuilder<V, S>._(
      key: key,
      builder: builder,
      isProviderApplied: isProviderApplied,
      buildWhen: buildWhen,
      stateListener: stateListener,
      onViewModelReady: onViewModelReady,
    );
  }

  final OnViewModelReady<V>? onViewModelReady;
  final Widget? child;
  final OnViewModelStateBuilder<V, S>? builder;
  final OnStateListener<S>? stateListener;
  final BuilderCondition<S>? buildWhen;
  final bool isProviderApplied;

  @override
  Widget build(BuildContext context) {
    return StateProvider<V>(
      onViewModelReady: onViewModelReady,
      child: child ??
          BlocConsumer<V, S>(
            builder: (context, state) {
              return builder?.call(
                    context,
                    BlocProvider.of(context),
                    state,
                  ) ??
                  Container();
            },
            listener: stateListener ?? (_, __) {},
            buildWhen: buildWhen,
          ),
    );
  }
}
