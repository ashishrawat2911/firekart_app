import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_state.freezed.dart';

@freezed
abstract class ResultState<T> with _$ResultState<T> {
  const factory ResultState.idle() = Idle<T>;

  const factory ResultState.loading() = Loading<T>;

  const factory ResultState.reLoading() = ReLoading<T>;

  const factory ResultState.data({required T data}) = Data<T>;

  const factory ResultState.error({required String error}) = Error<T>;

  const factory ResultState.unNotifiedError(
      {required T data, required String error}) = UnNotifiedError<T>;
}
