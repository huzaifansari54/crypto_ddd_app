import 'package:crypto_v1/core/failures/api/api_failures.dart';
import 'package:crypto_v1/core/utils/utils.dart';
import 'package:crypto_v1/data/model/crypto_exchange/crypto_exchange_model.dart';

abstract class CryptoExchangeRepository {
  ResultOrFailure<ApiFailure, CryptoExchangeModel> getCryptoExchange(
      {required DataMap query});
  ResultOrFailure<ApiFailure, CryptoExchangeModel> filter(
      {required DataMap query});
  ResultOrFailure<ApiFailure, CryptoExchangeModel> search(
      {required DataMap query});
}
