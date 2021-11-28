import 'dart:async';

import 'package:flutter/cupertino.dart';

abstract class GlobalListener {
  Stream<T> registerListener<T>(String listenerKey);

  void listen(String listenerKey, VoidCallback listen);

  void refreshListener<T>(String listenerKey, T data);

  void close();
}

class GlobalListenerConstants {
  GlobalListenerConstants._();

  static const String accountDetails = 'accountDetails';
}

class GlobalListenerImpl extends GlobalListener {
  Map<String, StreamController> listeners = {};

  @override
  Stream<T> registerListener<T>(String listenerKey) {
    final controller = StreamController<T>();
    listeners[listenerKey] = controller;
    return controller.stream;
  }

  @override
  void listen(String listenerKey, VoidCallback listen) {
    if (!listeners.containsKey(listenerKey)) {
      return;
    }

    listeners[listenerKey]!.stream.listen((event) {
      if (event == listenerKey) {
        listen();
      }
    });
  }

  @override
  void refreshListener<T>(String listenerKey, T data) {
    if (!listeners.containsKey(listenerKey)) {
      return;
    }
    listeners[listenerKey]!.sink.add(data);
  }

  @override
  void close() {
    listeners.forEach((key, value) {
      value.close();
    });
  }
}
