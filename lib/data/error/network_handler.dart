import 'package:dartz/dartz.dart';
import 'package:firekart/core/di/di.dart';
import 'package:firekart/core/logger/app_logger.dart';
import 'package:firekart/data/error/network_error_handler.dart';

import '../../domain/network_result/network_error.dart';

Future<Either<NetworkError, T>> getNetworkResult<T>(
  Future<T> Function() on,
) async {
  try {
    final res = await on();
    return Right(res);
  } catch (e, s) {
    AppLogger.log(e);
    final networkError = inject<NetworkErrorHandler>().getNetworkError(e, s);
    AppLogger.log(networkError);
    return Left(networkError);
  }
}
