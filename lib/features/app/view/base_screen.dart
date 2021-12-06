import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/state_manager/state_manager.dart';

abstract class BaseScreen<C extends StateManager<S>, S> extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @mustCallSuper
  void initState(C viewModel) {
    print('$this initState');
  }

  @mustCallSuper
  void stateListener(BuildContext context, S state) {
    print('$this listener $state');
  }

  Widget buildView(BuildContext context, C viewModel, S state);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState<C extends StateManager<S>, S>
    extends State<BaseScreen<C, S>> {
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
