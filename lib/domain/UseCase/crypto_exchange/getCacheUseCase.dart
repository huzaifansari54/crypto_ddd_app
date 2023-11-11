import 'package:dartz/dartz.dart';

import '../../../core/failures/api/api_failures.dart';
import '../../../data/model/crypto_exchange/crypto_exchange_model.dart';
import '../../repository/crypto_exchange/repository.dart';
import '../UseCase.dart';

class GetCacheCryptoUseCase extends UseCase<void, CryptoExchangeModel> {
  const GetCacheCryptoUseCase(this._repository);
  final CryptoExchangeRepository _repository;

  @override
  Future<Either<ApiFailure, CryptoExchangeModel>> call({required void param}) {
    return _repository.cacheData();
  }
}
