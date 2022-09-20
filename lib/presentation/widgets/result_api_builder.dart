import 'package:core/core.dart';
import 'package:flutter/material.dart';

typedef ResultErrorWidget<NetworkExceptions> = Widget Function(
    NetworkExceptions error);
typedef ResultLoadingWidget = Widget Function(bool isReloading);
typedef ReturnWidget = Widget Function();
typedef ResultDataWidget<T> = Widget Function(T value);

class ResultStateBuilder<T> extends StatelessWidget {
  const ResultStateBuilder(
      {required this.state,
      required this.dataWidget,
      required this.loadingWidget,
      required this.errorWidget,
      this.idleWidget,
      this.showLoadingInitially = true,
      Key? key})
      : super(key: key);
  final ResultState<T> state;
  final ResultDataWidget<T> dataWidget;
  final ResultLoadingWidget loadingWidget;
  final ReturnWidget? idleWidget;
  final ResultErrorWidget<String> errorWidget;
  final bool showLoadingInitially;

  @override
  Widget build(BuildContext context) {
    return state.when(
      idle: () {
        if (idleWidget == null) {
          return Container();
        }
        return idleWidget!();
      },
      loading: () {
        return loadingWidget(false);
      },
      data: (T value) {
        return dataWidget(value);
      },
      error: (String error) {
        return errorWidget(error);
      },
      unNotifiedError: (T data, String error) {
        return dataWidget(data);
      },
      reLoading: () {
        return loadingWidget(true);
      },
    );
  }
}
