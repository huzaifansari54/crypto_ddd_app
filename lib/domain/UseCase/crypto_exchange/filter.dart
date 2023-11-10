import 'package:crypto_v1/core/failures/api/api_failures.dart';
import 'package:crypto_v1/core/utils/utils.dart';
import 'package:crypto_v1/domain/UseCase/UseCase.dart';
import 'package:crypto_v1/data/model/crypto_exchange/crypto_exchange_model.dart';
import 'package:crypto_v1/domain/repository/crypto_exchange/repository.dart';
import 'package:dartz/dartz.dart';

class FilterCryptoUseCase extends UseCase<DataMap, CryptoExchangeModel> {
  const FilterCryptoUseCase(this._repository);
  final CryptoExchangeRepository _repository;

  @override
  Future<Either<ApiFailure, CryptoExchangeModel>> call(
      {required DataMap param}) async {
    return await _repository.filter(query: param);
  }
}
