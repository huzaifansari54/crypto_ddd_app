import 'package:crypto_v1/core/failures/api/api_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entity/crypto_exchange/entity.dart';
part 'state.freezed.dart';

@freezed
abstract class CryptoExchangeState with _$CryptoExchangeState {
  const factory CryptoExchangeState.intial() = _Intial;
  const factory CryptoExchangeState.loading(
      {required List<DataEntity> entity}) = _Loading;
  const factory CryptoExchangeState.loaded({required List<DataEntity> entity}) =
      _Loaded;
  const factory CryptoExchangeState.failed({required ApiFailure apiFailure}) =
      Failed;
  const factory CryptoExchangeState.failedWithCachData(
      {required ApiFailure apiFailure,
      required CryptoExchangeEntity cacheData}) = _FailedWithCachData;
}
