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
import 'dart:io';

import 'package:data/di/di.dart';
import 'package:data/source/local/local_storage.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @injectable
  Dio getDio(LocalStorage _localStorage) {
    final _dio = Dio();
    _dio
      ..httpClientAdapter
      ..interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestBody: true,
        ),
      )
      ..options.headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'X-Requested-With': 'XMLHttpRequest',
        if (_localStorage.token.isNotEmpty)
          'Authorization': 'Bearer ${_localStorage.token}',
      };
    return _dio;
  }

  @Named(DIConstants.baseUrl)
  String get baseUrl => 'https://firekart.cyclic.cloud/api/v1/';

  @preResolve
  Future<HttpClient> sslHttpClient() async {
    HttpClient httpClient = HttpClient();
    return httpClient;
  }
}
