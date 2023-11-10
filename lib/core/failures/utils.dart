import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../data/model/crypto_exchange/crypto_exchange_model.dart';
import 'api/api_failures.dart';
import 'exception/exceptions.dart';

Either<ApiFailure, CryptoExchangeModel> dioErrorHandler(DioException e) {
  return switch (e.type) {
    DioExceptionType.connectionTimeout => left(const ApiFailure.timeout()),
    DioExceptionType.cancel =>
      left(const ApiFailure.serverFailed(message: "request cancel")),
    DioExceptionType.badResponse =>
      left(const ApiFailure.serverFailed(message: "Bad Request")),
    DioExceptionType.badCertificate =>
      left(const ApiFailure.serverFailed(message: "Bad certificate")),
    DioExceptionType.connectionError => left(const ApiFailure.internetOut()),
    DioExceptionType.receiveTimeout => left(const ApiFailure.timeout()),
    DioExceptionType.sendTimeout => left(const ApiFailure.timeout()),
    DioExceptionType.unknown =>
      throw const ApiException(message: "Unknown", status: "400")
  };
}
