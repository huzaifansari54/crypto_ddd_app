import 'package:crypto_v1/data/data_source/local/crypto_exchange/crypto_exchange_local_data_source.dart';
import 'package:crypto_v1/data/data_source/remote/crypto_exchange/crypto_exchange.dart';
import 'package:crypto_v1/data/repository/crypto_exchange/crypto_repo_Impl.dart';
import 'package:crypto_v1/domain/UseCase/UseCase.dart';
import 'package:crypto_v1/domain/UseCase/crypto_exchange/cachedCryptoUseCase.dart';
import 'package:crypto_v1/domain/UseCase/crypto_exchange/filter.dart';
import 'package:crypto_v1/domain/UseCase/crypto_exchange/getAllCryptoUseCase.dart';
import 'package:crypto_v1/domain/UseCase/crypto_exchange/getCacheUseCase.dart';
import 'package:crypto_v1/domain/repository/crypto_exchange/repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

const timoutDuration = Duration(seconds: 20);

const conectionTimeOut = Duration(seconds: 5);
final locator = GetIt.instance;
Future<void> setup() async {
  locator.registerLazySingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance());
  locator.registerSingleton<Dio>(Dio(BaseOptions(
    receiveDataWhenStatusError: true,
    sendTimeout: timoutDuration,
    connectTimeout: conectionTimeOut,
    receiveTimeout: timoutDuration,
    validateStatus: (status) => status! < 500,
  )));
  await locator.isReady<SharedPreferences>();
  locator
    ..registerSingleton<CryptoExchangeDataSource>(CryptoExchangeDataSource(
      locator(),
    ))
    ..registerSingleton(CryptoLocalDataSource(locator()))
    ..registerSingleton<CryptoExchangeRepository>(
        CryptoRepositoryImp(locator(), locator()))
    ..registerSingleton(GetAllCryptoUseCase(locator()))
    ..registerSingleton(FilterCryptoUseCase(locator()))
    ..registerSingleton(GetCacheCryptoUseCase(locator()))
    ..registerSingleton(CachedCryptoUseCase(locator()));
}
