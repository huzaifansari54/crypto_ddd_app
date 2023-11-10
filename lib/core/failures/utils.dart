import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../data/model/crypto_exchange/crypto_exchange_model.dart';
import '../../locator.dart';
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

Never dioExceptionHandling(DioException e) {
  return switch (e.type) {
    DioExceptionType.connectionTimeout => throw DioException.connectionTimeout(
        requestOptions: e.requestOptions,
        timeout: conectionTimeOut,
      ),
    DioExceptionType.cancel => throw DioException.requestCancelled(
        requestOptions: e.requestOptions,
        reason: "internet Connection is Lost"),
    DioExceptionType.badResponse => throw DioException.badResponse(
        requestOptions: e.requestOptions,
        response: e.response!,
        statusCode: 400,
      ),
    DioExceptionType.badCertificate => throw DioException.connectionError(
        requestOptions: e.requestOptions, reason: "Bad certificate"),
    DioExceptionType.connectionError => throw DioException.connectionError(
        requestOptions: e.requestOptions,
        reason: "internet Connection is Lost"),
    DioExceptionType.receiveTimeout => throw DioException.receiveTimeout(
        requestOptions: e.requestOptions,
        timeout: timoutDuration,
      ),
    DioExceptionType.sendTimeout => throw DioException.sendTimeout(
        requestOptions: e.requestOptions, timeout: timoutDuration),
    DioExceptionType.unknown =>
      throw const ApiException(message: "Unknown", status: "400")
  };
}
