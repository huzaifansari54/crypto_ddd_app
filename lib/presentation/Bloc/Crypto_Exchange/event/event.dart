import 'package:crypto_v1/core/utils/utils.dart';
import 'package:crypto_v1/presentation/widget/searchBar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'event.freezed.dart';

@freezed
abstract class CryptoEvent with _$CryptoEvent {
  const factory CryptoEvent.getAllCryptoExchange({required DataMap query}) =
      _GetAll;
  const factory CryptoEvent.filter(
      {required DataMap query, required filter fil}) = _Filter;
}
