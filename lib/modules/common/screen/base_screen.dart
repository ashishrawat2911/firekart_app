import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';

abstract class BaseView<T extends Cubit<S>, S> extends StatefulWidget {
  const BaseView({Key key}) : super(key: key);

  @mustCallSuper
  void initState(T bloc) {}

  @protected
  Widget build(BuildContext context, S state);

  @mustCallSuper
  void dispose(T bloc, S state) {}

  @override
  _BaseViewState<T, S> createState() => _BaseViewState<T, S>();
}

class _BaseViewState<T extends Cubit<S>, S> extends State<BaseView<T, S>> {
  T bloc = DI.container<T>();

  @override
  void initState() {
    if (widget.initState != null) {
      widget.initState(bloc);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, S>(
      builder: widget.build,
      cubit: bloc,
    );
  }
}

class AA extends BaseView {
  @override
  Widget build(BuildContext context, state) {
    return Container();
  }

  @override
  void dispose(Cubit<dynamic> bloc, state) {}

  @override
  void initState(Cubit<dynamic> bloc) {}
}
