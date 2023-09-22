import 'package:domain/network_result/network_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_result.freezed.dart';

@Freezed(
  copyWith: false,
  fromJson: false,
  toJson: false,
  makeCollectionsUnmodifiable: false,
  when: FreezedWhenOptions(
    maybeWhen: false,
    whenOrNull: false,
  ),
  map: FreezedMapOptions.none,
)
abstract class NetworkResult<T> with _$NetworkResult<T> {
  const factory NetworkResult.success(T data) = Success<T>;

  const factory NetworkResult.failure(NetworkError error) = Failure<T>;
}
