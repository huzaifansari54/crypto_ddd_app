// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_exchange_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoExchangeEntityImpl _$$CryptoExchangeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CryptoExchangeEntityImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CryptoExchangeEntityImplToJson(
        _$CryptoExchangeEntityImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      logoUrl: json['logoUrl'] as String?,
      id: json['id'] as num,
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
      slug: json['slug'] as String?,
      cmc_rank: json['cmc_rank'] as num?,
      circulating_supply: json['circulating_supply'] as num?,
      total_supply: json['total_supply'] as num?,
      max_supply: json['max_supply'] as num?,
      quote: json['quote'] == null
          ? null
          : Quoto.fromJson(json['quote'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'logoUrl': instance.logoUrl,
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'slug': instance.slug,
      'cmc_rank': instance.cmc_rank,
      'circulating_supply': instance.circulating_supply,
      'total_supply': instance.total_supply,
      'max_supply': instance.max_supply,
      'quote': instance.quote,
    };

_$QuotoImpl _$$QuotoImplFromJson(Map<String, dynamic> json) => _$QuotoImpl(
      usd: Currency.fromJson(json['USD'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuotoImplToJson(_$QuotoImpl instance) =>
    <String, dynamic>{
      'USD': instance.usd,
    };

_$CurrencyImpl _$$CurrencyImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyImpl(
      price: json['price'] as num?,
      volume_change_24h: json['volume_change_24h'] as num?,
      percent_change_1h: json['percent_change_1h'] as num?,
      percent_change_24h: json['percent_change_24h'] as num?,
      percent_change_7d: json['percent_change_7d'] as num?,
      market_cap: json['market_cap'] as num?,
    );

Map<String, dynamic> _$$CurrencyImplToJson(_$CurrencyImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'volume_change_24h': instance.volume_change_24h,
      'percent_change_1h': instance.percent_change_1h,
      'percent_change_24h': instance.percent_change_24h,
      'percent_change_7d': instance.percent_change_7d,
      'market_cap': instance.market_cap,
    };
