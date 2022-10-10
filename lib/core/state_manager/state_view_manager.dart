import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/core/state_manager/state_manager.dart';

import '../../di/di.dart';

typedef OnViewModelReady<V> = void Function(V viewModel);
typedef OnViewModelStateBuilder<V, S> = Widget Function(BuildContext context, V viewModel, S state);
typedef OnViewModelBuilder<V> = Widget Function(BuildContext context, V viewModel);
typedef OnStateListener<S> = void Function(BuildContext context, S state);
typedef BuilderCondition<S> = bool Function(S previous, S current);

class BaseView<V extends StateManager<S>, S> extends StatefulWidget {
  const BaseView({
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
  State<BaseView<V, S>> createState() => _BaseViewState<V, S>();
}

class _BaseViewState<V extends StateManager<S>, S> extends State<BaseView<V, S>> {
  final V viewModel = inject<V>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<V>.value(
      value: viewModel,
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
