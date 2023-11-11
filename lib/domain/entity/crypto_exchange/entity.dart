import 'package:crypto_v1/data/model/crypto_exchange/crypto_exchange_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class CryptoExchangeEntity extends Equatable {
  final List<DataEntity>? data;
  const CryptoExchangeEntity({required this.data});

  @override
  // TODO: implement props
  List<Object?> get props => [data];
}

class DataEntity extends Equatable {
  const DataEntity(
      {required this.logoUrl,
      required this.id,
      required this.name,
      required this.symbol,
      required this.slug,
      required this.cmc_rank,
      required this.circulating_supply,
      required this.total_supply,
      required this.max_supply,
      required this.quote});
  final String id;
  final String name;
  final String logoUrl;
  final String symbol;
  final String slug;
  final num cmc_rank;
  final num circulating_supply;
  final num total_supply;
  final num max_supply;
  final QuotoEntity quote;

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        logoUrl,
        symbol,
        slug,
        cmc_rank,
        circulating_supply,
        total_supply,
        max_supply,
        quote
      ];
}

class QuotoEntity extends Equatable {
  final CurrencyEntity usd;
  const QuotoEntity({required this.usd});

  @override
  // TODO: implement props
  List<Object?> get props => [usd];
}

class CurrencyEntity extends Equatable {
  const CurrencyEntity({
    required this.price,
    required this.volume_change_24h,
    required this.percent_change_1h,
    required this.percent_change_24h,
    required this.percent_change_7d,
    required this.market_cap,
  });
  final num price;
  final num volume_change_24h;
  final num percent_change_1h;
  final num percent_change_24h;
  final num percent_change_7d;
  final num market_cap;
  bool get isRise => percent_change_1h.isNegative;
  num get percentChange => (percent_change_1h * 100).ceil();

  @override
  // TODO: implement props
  List<Object?> get props => [
        price,
        volume_change_24h,
        percentChange,
        percent_change_1h,
        percent_change_24h,
        percent_change_7d,
        isRise,
        market_cap
      ];
}
