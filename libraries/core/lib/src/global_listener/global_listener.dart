import 'dart:async';

import 'package:flutter/cupertino.dart';

abstract class GlobalListener {
  Stream<T> registerListener<T>(String listenerKey);

  void listen<T>(String listenerKey, ValueChanged<T> listen);

  void refreshListener<T>(String listenerKey, T data);

  void close();
}

class GlobalListenerImpl extends GlobalListener {
  Map<String, StreamController> listeners = {};
  Map<String, dynamic> lastData = {};

  @override
  Stream<T> registerListener<T>(String listenerKey) {
    if (!listeners.containsKey(listenerKey)) {
      final controller = StreamController<T>.broadcast();
      listeners[listenerKey] = controller;
      return controller.stream;
    } else {
      return listeners[listenerKey]!.stream as Stream<T>;
    }
  }

  @override
  void listen<T>(String listenerKey, ValueChanged<T> listen) {
    assert(
      listeners.containsKey(listenerKey),
      'Listener is not registered! Please register it',
    );
    if (lastData.containsKey(listenerKey)) {
      listen(lastData[listenerKey]);
    }
    listeners[listenerKey]!.stream.listen((event) {
      if (event == listenerKey) {
        listen(event);
        lastData[listenerKey] = event;
      }
    });
  }

  @override
  void refreshListener<T>(String listenerKey, T data) {
    if (!listeners.containsKey(listenerKey)) {
      return;
    }
    lastData[listenerKey] = data;
    listeners[listenerKey]!.sink.add(data);
  }

  @override
  void close() {
    listeners.forEach((key, value) {
      value.close();
    });
  }
}
