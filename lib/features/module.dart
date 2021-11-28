import 'package:flutter/material.dart';

abstract class Module {
  void registerDependencies();

  @mustCallSuper
  void close() {}
}
