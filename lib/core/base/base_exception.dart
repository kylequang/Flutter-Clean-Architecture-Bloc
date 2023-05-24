class BaseException implements Exception {
  final String message;
  final dynamic error;

  BaseException(this.message, [this.error]);

  @override
  String toString() {
    if (error != null) {
      return 'BaseException: $message\nError: $error';
    }
    return 'BaseException: $message';
  }
}
