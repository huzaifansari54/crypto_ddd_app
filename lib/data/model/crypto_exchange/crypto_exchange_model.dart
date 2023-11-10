import 'package:crypto_v1/domain/entity/crypto_exchange/entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'crypto_exchange_model.freezed.dart';
part 'crypto_exchange_model.g.dart';

@freezed
abstract class CryptoExchangeModel with _$CryptoExchangeModel {
  const CryptoExchangeModel._();
  const factory CryptoExchangeModel({required List<Data> data}) =
      _CryptoExchangeEntity;
  factory CryptoExchangeModel.fromJson(Map<String, Object?> json) =>
      _$CryptoExchangeModelFromJson(json);
  CryptoExchangeEntity toDomain() =>
      CryptoExchangeEntity(data: data.map((e) => e.toEntity()).toList());
}

@freezed
abstract class Data with _$Data {
  const Data._();
  const factory Data({
    required String? logoUrl,
    required num id,
    required String? name,
    required String? symbol,
    required String? slug,
    required num? cmc_rank,
    required num? circulating_supply,
    required num? total_supply,
    required num? max_supply,
    required Quoto? quote,
  }) = _Data;
  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
  DataEntity toEntity() => DataEntity(
      id: id.toString(),
      logoUrl: logoUrl ?? "",
      name: name ?? "name",
      symbol: symbol ?? "",
      slug: slug ?? "",
      cmc_rank: cmc_rank ?? 0,
      circulating_supply: circulating_supply ?? 0,
      total_supply: total_supply ?? 0,
      max_supply: max_supply ?? 0,
      quote: quote!.toEntity());
}

@freezed
abstract class Quoto with _$Quoto {
  const Quoto._();
  const factory Quoto({@JsonKey(name: "USD") required Currency usd}) = _Quoto;
  factory Quoto.fromJson(Map<String, Object?> json) => _$QuotoFromJson(json);

  QuotoEntity toEntity() => QuotoEntity(usd: usd.toEntity());
}

@freezed
abstract class Currency with _$Currency {
  const Currency._();
  const factory Currency({
    required num? price,
    required num? volume_change_24h,
    required num? percent_change_1h,
    required num? percent_change_24h,
    required num? percent_change_7d,
    required num? market_cap,
  }) = _Currency;
  factory Currency.fromJson(Map<String, Object?> json) =>
      _$CurrencyFromJson(json);
  CurrencyEntity toEntity() => CurrencyEntity(
      price: price!,
      volume_change_24h: volume_change_24h ?? 0,
      percent_change_1h: percent_change_1h ?? 0,
      percent_change_24h: percent_change_24h ?? 0,
      percent_change_7d: percent_change_7d ?? 0,
      market_cap: market_cap ?? 0);
}
// {
  // "price": 9283.92,
// "volume_24h": 7155680000,
// "volume_change_24h": -0.152774,
// "percent_change_1h": -0.152774,
// "percent_change_24h": 0.518894,
// "percent_change_7d": 0.986573,
// "market_cap": 852164659250.2758,
// "market_cap_dominance": 51,
// "fully_diluted_market_cap": 952835089431.14,
// "last_updated": "2018-08-09T22:53:32.000Z"
// "data": [
// {
// "id": 1,
// "name": "Bitcoin",
// "symbol": "BTC",
// "slug": "bitcoin",
// "cmc_rank": 5,
// "num_market_pairs": 500,
// "circulating_supply": 16950100,
// "total_supply": 16950100,
// "max_supply": 21000000,
// "infinite_supply": false,
// "last_updated": "2018-06-02T22:51:28.209Z",
// "date_added": "2013-04-28T00:00:00.000Z",
// "tags": [
// "mineable"
// ],
// "platform": null,
// "self_reported_circulating_supply": null,
// "self_reported_market_cap": null,
// "quote": {
// "USD": {

// },
// "BTC": {
// "price": 1,
// "volume_24h": 772012,
// "volume_change_24h": 0,
// "percent_change_1h": 0,
// "percent_change_24h": 0,
// "percent_change_7d": 0,
// "market_cap": 17024600,
// "market_cap_dominance": 12,
// "fully_diluted_market_cap": 952835089431.14,
// "last_updated": "2018-08-09T22:53:32.000Z"
// }
// }
// },