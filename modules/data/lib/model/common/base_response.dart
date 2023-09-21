import 'package:domain/models/network.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class NetworkResponse<T> {
  @JsonKey(name: 'success')
  bool status;
  @JsonKey(name: 'message')
  String message;
  @JsonKey(name: 'data')
  T data;

  NetworkResponse(this.status, this.message, this.data);

  factory NetworkResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic json) fromJsonT,
  ) =>
      _$NetworkResponseFromJson(json, fromJsonT);
}

extension NetworkResponseExt<T> on NetworkResponse<T> {
  NetworkEntity<T> toEntity() {
    return NetworkEntity(status, message, data);
  }

  EmptyEntity toEmptyEntity() {
    return EmptyEntity(status, message);
  }
}

extension EmptyNetworkResponseExt on EmptyNetworkResponse {
  EmptyEntity toEntity() {
    return EmptyEntity(status, message);
  }
}

@JsonSerializable()
class EmptyNetworkResponse {
  @JsonKey(name: 'success')
  bool status;
  @JsonKey(name: 'message')
  String message;

  EmptyNetworkResponse(
    this.status,
    this.message,
  );

  factory EmptyNetworkResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EmptyNetworkResponseFromJson(json);
}
