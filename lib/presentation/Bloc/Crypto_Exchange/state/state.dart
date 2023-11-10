import 'package:crypto_v1/core/failures/api/api_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entity/crypto_exchange/entity.dart';
part 'state.freezed.dart';

@freezed
abstract class CryptoExchangeState with _$CryptoExchangeState {
  const factory CryptoExchangeState.intial() = _Intial;
  const factory CryptoExchangeState.loading() = _Loading;
  const factory CryptoExchangeState.loaded(
      {required CryptoExchangeEntity entity}) = _Loaded;
  const factory CryptoExchangeState.failed({required ApiFailure apiFailure}) =
      Failed;
}
