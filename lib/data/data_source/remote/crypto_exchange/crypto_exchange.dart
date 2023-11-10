import 'package:crypto_v1/core/confidential/confidential.dart';
import 'package:crypto_v1/core/extensions/network_ex.dart';
import 'package:crypto_v1/data/model/crypto_exchange/crypto_exchange_model.dart';
import 'package:crypto_v1/locator.dart';
import 'package:dio/dio.dart';

import '../../../../core/failures/exception/exceptions.dart';
import '../../../../core/failures/model/failure_model.dart';
import '../../../../core/utils/utils.dart';

const crypto = "v1/cryptocurrency/listings/latest";
const logoUrl = "v2/cryptocurrency/info";

final class CryptoExchangeDataSource {
  const CryptoExchangeDataSource(this._cleint);
  final Dio _cleint;

  Future<CryptoExchangeModel> getCryptoExchanges(
      {required DataMap query}) async {
    try {
      final response = await _cleint.get(endpoint(crypto),
          queryParameters: query,
          options: Options(
              receiveDataWhenStatusError: true,
              headers: headerBearerOption(apiKey)));

      final data =
          (response.data["data"] as List).map((e) => Data.fromJson(e)).toList();

      for (var element in data) {
        final responses = await _cleint.get(endpoint(logoUrl),
            queryParameters: {"id": element.id},
            options: Options(
                receiveDataWhenStatusError: true,
                headers: headerBearerOption(apiKey)));
        final {"logo": logo} = responses.data["data"][element.id.toString()];
        data[data.indexOf(element)] =
            data[data.indexOf(element)].copyWith(logoUrl: logo);
      }

      if (!response.isStatusCode(200)) {
        throw ApiException(
            failure: FailureModel.fromJson(response.data),
            message: response.statusMessage!,
            status: response.statusCode.toString());
      }

      return CryptoExchangeModel(data: data);
    } on DioException catch (e) {
      return dioExceptionHandling(e);
    } on ApiException catch (e) {
      throw ApiException(
          failure: e.failure, message: e.message, status: e.status);
    }
  }

  Never dioExceptionHandling(DioException e) {
    return switch (e.type) {
      DioExceptionType.connectionTimeout =>
        throw DioException.connectionTimeout(
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
}
