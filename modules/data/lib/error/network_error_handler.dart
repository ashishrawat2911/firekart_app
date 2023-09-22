import 'dart:io';

import 'package:dio/dio.dart';
import 'package:core/logger/app_logger.dart';
import 'package:data/error/app_error_model.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:injectable/injectable.dart';

@singleton
class NetworkErrorHandler {
  final AppErrorModel _appErrorModel;

  NetworkErrorHandler(this._appErrorModel);

  NetworkError getNetworkError(dynamic error, [StackTrace? s]) {
    AppLogger.errorLog(s);
    String networkExceptions;
    int statusCode = 0;
    if (error is Exception) {
      try {
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              networkExceptions = 'request_cancelled';
              break;
            case DioExceptionType.connectionTimeout:
              networkExceptions = 'connection_request_timeout';
              break;
            case DioExceptionType.unknown:
              networkExceptions = 'no_internet_connection';
              break;
            case DioExceptionType.receiveTimeout:
              networkExceptions = 'receive_timeout';
              break;
            case DioExceptionType.badResponse:
              final response = error.response;
              statusCode = response?.statusCode ?? 0;
              try {
                networkExceptions =
                    _appErrorModel.getNetworkError(response!.data).errorMessage;
              } catch (e) {
                AppLogger.errorLog(e);
                networkExceptions = 'invalid_status_code: $statusCode';
                return NetworkError.fromStatusCode(statusCode);
              }
              break;
            case DioExceptionType.sendTimeout:
              networkExceptions = 'send_timeout';
              break;
            case DioExceptionType.badCertificate:
              networkExceptions = 'bad_certificate';
              break;
            case DioExceptionType.connectionError:
              networkExceptions = 'connection_error';
          }
        } else if (error is SocketException) {
          networkExceptions = 'no_internet_connection';
        } else {
          networkExceptions = 'unexpected_error_occurred';
        }
      } on FormatException catch (e) {
        networkExceptions = 'unexpected_error_occurred : ${e.message}';
      } catch (_) {
        networkExceptions = 'unexpected_error_occurred';
      }
    } else {
      if (error.toString().contains('is not a subtype of')) {
        networkExceptions = 'unable_to_process';
      } else {
        networkExceptions = 'unexpected_error_occurred';
      }
    }
    return NetworkError(networkExceptions, statusCode);
  }
}
