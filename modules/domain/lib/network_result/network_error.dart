class NetworkError {
  String errorMessage;
  int status;

  NetworkError(this.errorMessage, this.status);

  @override
  String toString() {
    return 'NetworkError{errorMessage: $errorMessage, status: $status}';
  }
}
