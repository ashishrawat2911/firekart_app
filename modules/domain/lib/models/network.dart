class EmptyEntity {
  bool status;
  String message;

  EmptyEntity(this.status, this.message);
}

class NetworkEntity<T> {
  bool status;
  String message;
  T data;

  NetworkEntity(this.status, this.message, this.data);
}
