import 'dart:convert';

import 'package:flutter/services.dart';

class AppConfiguration {
  factory AppConfiguration() => _singleton;

  AppConfiguration._internal();

  static const _globConfig = 'globConfig';

  static final _singleton = AppConfiguration._internal();

  final _configs = <String, dynamic>{};

  Future<AppConfiguration> loadConfigs(String name, {String? category}) async {
    final configJsonString =
        await rootBundle.loadString('assets/configs/$name');

    final configJson = json.decode(configJsonString) as Map<String, dynamic>;

    if (category == null || category.isEmpty) {
      category = _globConfig;
    }

    if (_configs[category] == null) {
      //ignore:avoid-dynamic
      _configs[category] = <String, dynamic>{};
    }

    _configs[category].addAll(configJson);

    return _singleton;
  }

  T getConfig<T>(String key, {String? category}) {
    if (category == null || category.isEmpty) {
      category = _globConfig;
    }
    return _configs[category][key] as T;
  }
}
