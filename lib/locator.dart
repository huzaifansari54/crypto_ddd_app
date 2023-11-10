import 'package:crypto_v1/core/confidential/confidential.dart';
import 'package:crypto_v1/data/data_source/remote/crypto_exchange/crypto_exchange.dart';
import 'package:crypto_v1/data/repository/crypto_exchange/crypto_repo_Impl.dart';
import 'package:crypto_v1/domain/UseCase/UseCase.dart';
import 'package:crypto_v1/domain/UseCase/crypto_exchange/getAllCryptoUseCase.dart';
import 'package:crypto_v1/domain/repository/crypto_exchange/repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

const timoutDuration = Duration(seconds: 20);

const conectionTimeOut = Duration(seconds: 5);
final locator = GetIt.instance;
void setup() async {
  locator.registerSingleton<Dio>(Dio(BaseOptions(
    receiveDataWhenStatusError: true,
    sendTimeout: timoutDuration,
    connectTimeout: conectionTimeOut,
    receiveTimeout: timoutDuration,
    validateStatus: (status) => status! < 500,
  )));

  locator
    ..registerSingleton<CryptoExchangeDataSource>(CryptoExchangeDataSource(
      locator(),
    ))
    ..registerSingleton<CryptoExchangeRepository>(
        CryptoRepositoryImp(locator()))
    ..registerSingleton(GetAllCryptoUseCase(locator()));
}
