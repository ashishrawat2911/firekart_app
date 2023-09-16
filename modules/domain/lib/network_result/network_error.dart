class NetworkError {
  String errorMessage;
  int status;

  NetworkError(this.errorMessage, this.status);

  @override
  String toString() {
    return 'NetworkError{errorMessage: $errorMessage, status: $status}';
  }

  factory NetworkError.fromStatusCode(int statusCode) {
    switch (statusCode) {
      case 200:
        return NetworkError('OK', statusCode);
      case 201:
        return NetworkError('Created', statusCode);
      case 204:
        return NetworkError('No Content', statusCode);
      case 400:
        return NetworkError('Bad Request', statusCode);
      case 401:
        return NetworkError('Unauthorized', statusCode);
      case 403:
        return NetworkError('Forbidden', statusCode);
      case 404:
        return NetworkError('Not Found', statusCode);
      case 405:
        return NetworkError('Method Not Allowed', statusCode);
      case 500:
        return NetworkError('Internal Server Error', statusCode);
      case 503:
        return NetworkError('Service Unavailable', statusCode);
      default:
        return NetworkError(
          'Unknown Error : invalid_status_code ',
          statusCode,
        );
    }
  }
}
