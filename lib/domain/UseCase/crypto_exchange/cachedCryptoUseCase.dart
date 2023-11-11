import 'package:dartz/dartz.dart';

import '../../../core/failures/api/api_failures.dart';
import '../../../data/model/crypto_exchange/crypto_exchange_model.dart';
import '../../repository/crypto_exchange/repository.dart';
import '../UseCase.dart';

class CachedCryptoUseCase extends UseCase<CryptoExchangeModel, Unit> {
  const CachedCryptoUseCase(this._repository);
  final CryptoExchangeRepository _repository;

  @override
  Future<Either<ApiFailure, Unit>> call({required CryptoExchangeModel param}) {
    return _repository.addCacheData(model: param);
  }
}
