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
import 'package:dio/dio.dart';
import 'package:data/source/local/local_storage.dart';
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

    // (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
    //   return _sslHttpClient;
    // };
    return _dio;
  }

  @Named(DIConstants.baseUrl)
  String get baseUrl => 'https://firekart-service.onrender.com/api/v1/';
  // String get baseUrl => 'http://localhost:9090/';

  @preResolve
  Future<HttpClient> sslHttpClient() async {
    // List<int> certs = [];
    // try {
    //   ByteData bytes = await rootBundle.load('');
    //   certs = bytes.buffer.asUint8List();
    // } catch (e) {
    //   certs = [];
    // }

    // SecurityContext sc = SecurityContext();
    // sc.setTrustedCertificatesBytes(certs);
    // HttpClient httpClient = HttpClient(context: sc);
    HttpClient httpClient = HttpClient();
    return httpClient;
  }
}
