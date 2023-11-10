import '../model/failure_model.dart';

class ServerException implements Exception {
  final String message;
  final String status;
  const ServerException({required this.message, required this.status});
}

class ApiException implements Exception {
  final String message;
  final String? status;
  final FailureModel? failure;
  const ApiException(
      {required this.message, required this.status, this.failure});
}
