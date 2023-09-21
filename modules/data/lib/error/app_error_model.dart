import 'package:domain/network_result/network_error.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppErrorModel {
  NetworkError getNetworkError(Map<String, dynamic> json) {
    return NetworkError(json['message'] ?? '', json['status'] ?? 0);
  }
}
