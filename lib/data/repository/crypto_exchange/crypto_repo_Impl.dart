import 'package:crypto_v1/core/failures/api/api_failures.dart';
import 'package:crypto_v1/core/failures/exception/exceptions.dart';
import 'package:crypto_v1/core/utils/utils.dart';
import 'package:crypto_v1/data/data_source/local/crypto_exchange/crypto_exchange_local_data_source.dart';
import 'package:crypto_v1/data/data_source/remote/crypto_exchange/crypto_exchange.dart';
import 'package:crypto_v1/data/model/crypto_exchange/crypto_exchange_model.dart';
import 'package:crypto_v1/domain/repository/crypto_exchange/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../core/failures/utils.dart';

class CryptoRepositoryImp implements CryptoExchangeRepository {
  final CryptoExchangeDataSource _dataSource;
  final CryptoLocalDataSource _localDataSource;
  const CryptoRepositoryImp(this._dataSource, this._localDataSource);
  @override
  ResultOrFailure<ApiFailure, CryptoExchangeModel> getCryptoExchange(
      {required DataMap query}) async {
    try {
      final cryptData = await _dataSource.getCryptoExchanges(query: query);
      return right(cryptData);
    } on ApiException catch (e) {
      return Left(ApiFailure.serverFailed(
          message: e.failure!.status.error_message ?? "no message"));
    } on DioException catch (e) {
      return dioErrorHandler(e);
    }
  }

  @override
  ResultOrFailure<ApiFailure, CryptoExchangeModel> filter(
      {required DataMap query}) async {
    try {
      final cryptData = await _dataSource.filter(query: query);
      return right(cryptData);
    } on ApiException catch (e) {
      return Left(ApiFailure.serverFailed(
          message: e.failure!.status.error_message ?? "no message"));
    } on DioException catch (e) {
      return dioErrorHandler(e);
    }
  }

  @override
  ResultOrFailure<ApiFailure, CryptoExchangeModel> search(
      {required DataMap query}) {
    // TODO: implement search
    throw UnimplementedError();
  }

  @override
  ResultOrFailure<ApiFailure, CryptoExchangeModel> cacheData() async {
    try {
      final cryptData = await _localDataSource.getAllCrypto();
      return right(cryptData);
    } catch (e) {
      return const Left(ApiFailure.serverFailed(message: "no message"));
    }
  }

  @override
  ResultOrFailure<ApiFailure, Unit> addCacheData(
      {required CryptoExchangeModel model}) async {
    try {
      await _localDataSource.saveCrypto(model: model);
      return const Right(unit);
    } catch (e) {
      return const Left(ApiFailure.serverFailed(message: "no message"));
    }
  }
}
