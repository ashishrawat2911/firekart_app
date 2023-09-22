/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:core/state/result_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResultStateBuilder<T> extends StatelessWidget {
  const ResultStateBuilder({
    required this.state,
    required this.dataWidget,
    required this.loadingWidget,
    required this.errorWidget,
    this.idleWidget,
    this.showLoadingInitially = true,
    Key? key,
  }) : super(key: key);
  final ResultState<T> state;
  final ResultDataWidget<T> dataWidget;
  final ResultLoadingWidget loadingWidget;
  final ReturnWidget? idleWidget;
  final ResultErrorWidget<String> errorWidget;
  final bool showLoadingInitially;

  @override
  Widget build(BuildContext context) => state.when(
        idle: () {
          if (idleWidget == null) {
            return Container();
          }

          return idleWidget!();
        },
        loading: () => loadingWidget(false),
        data: dataWidget,
        error: errorWidget,
        unNotifiedError: (data, error) => dataWidget(data),
        reLoading: () => loadingWidget(true),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<ResultState<T>>('state', state))
      ..add(
        ObjectFlagProperty<ResultDataWidget<T>>.has('dataWidget', dataWidget),
      )
      ..add(
        ObjectFlagProperty<ResultLoadingWidget>.has(
          'loadingWidget',
          loadingWidget,
        ),
      )
      ..add(ObjectFlagProperty<ReturnWidget?>.has('idleWidget', idleWidget))
      ..add(
        ObjectFlagProperty<ResultErrorWidget<String>>.has(
          'errorWidget',
          errorWidget,
        ),
      )
      ..add(
        DiagnosticsProperty<bool>(
          'showLoadingInitially',
          showLoadingInitially,
        ),
      );
  }
}

typedef ResultErrorWidget<NetworkExceptions> = Widget Function(
  NetworkExceptions error,
);
typedef ResultLoadingWidget = Widget Function(bool isReloading);
typedef ReturnWidget = Widget Function();
typedef ResultDataWidget<T> = Widget Function(T value);
