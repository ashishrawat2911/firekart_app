class NetworkError {
  String errorMessage;
  String status;

  NetworkError(this.errorMessage, this.status);

  @override
  String toString() {
    return 'NetworkError{errorMessage: $errorMessage, status: $status}';
  }

  factory NetworkError.fromStatusCode(int statusCode) {
    switch (statusCode) {
      case 200:
        return NetworkError('OK', statusCode.toString());
      case 201:
        return NetworkError('Created', statusCode.toString());
      case 204:
        return NetworkError('No Content', statusCode.toString());
      case 400:
        return NetworkError('Bad Request', statusCode.toString());
      case 401:
        return NetworkError('Unauthorized', statusCode.toString());
      case 403:
        return NetworkError('Forbidden', statusCode.toString());
      case 404:
        return NetworkError('Not Found', statusCode.toString());
      case 405:
        return NetworkError('Method Not Allowed', statusCode.toString());
      case 500:
        return NetworkError('Internal Server Error', statusCode.toString());
      case 503:
        return NetworkError('Service Unavailable', statusCode.toString());
      default:
        return NetworkError(
            'Unknown Error : invalid_status_code ', statusCode.toString());
    }
  }
}
