class NetworkError implements Exception {
  final String message;

  NetworkError(this.message);
}

class AppError implements Exception {
  final String message;

  AppError(this.message);
}