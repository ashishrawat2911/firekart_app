import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';

typedef _SingletonNotifierBuilder<T> = Widget Function(T value);

class ProviderNotifier<T extends ChangeNotifier> extends StatelessWidget {
  final _SingletonNotifierBuilder<T> child;
  final T valueNotifier;

  ProviderNotifier({@required this.child, this.valueNotifier})
      : assert(child != null);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
      value: valueNotifier ?? AppInjector.get<T>(),
      builder: (BuildContext context, _) {
        return Consumer<T>(
          builder: (BuildContext context, T value, _) {
            return child(value);
          },
        );
      },
    );
  }
}
