// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_exchange_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CryptoExchangeModel _$CryptoExchangeModelFromJson(Map<String, dynamic> json) {
  return _CryptoExchangeEntity.fromJson(json);
}

/// @nodoc
mixin _$CryptoExchangeModel {
  List<Data> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoExchangeModelCopyWith<CryptoExchangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoExchangeModelCopyWith<$Res> {
  factory $CryptoExchangeModelCopyWith(
          CryptoExchangeModel value, $Res Function(CryptoExchangeModel) then) =
      _$CryptoExchangeModelCopyWithImpl<$Res, CryptoExchangeModel>;
  @useResult
  $Res call({List<Data> data});
}

/// @nodoc
class _$CryptoExchangeModelCopyWithImpl<$Res, $Val extends CryptoExchangeModel>
    implements $CryptoExchangeModelCopyWith<$Res> {
  _$CryptoExchangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoExchangeEntityImplCopyWith<$Res>
    implements $CryptoExchangeModelCopyWith<$Res> {
  factory _$$CryptoExchangeEntityImplCopyWith(_$CryptoExchangeEntityImpl value,
          $Res Function(_$CryptoExchangeEntityImpl) then) =
      __$$CryptoExchangeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Data> data});
}

/// @nodoc
class __$$CryptoExchangeEntityImplCopyWithImpl<$Res>
    extends _$CryptoExchangeModelCopyWithImpl<$Res, _$CryptoExchangeEntityImpl>
    implements _$$CryptoExchangeEntityImplCopyWith<$Res> {
  __$$CryptoExchangeEntityImplCopyWithImpl(_$CryptoExchangeEntityImpl _value,
      $Res Function(_$CryptoExchangeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CryptoExchangeEntityImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoExchangeEntityImpl extends _CryptoExchangeEntity {
  const _$CryptoExchangeEntityImpl({required final List<Data> data})
      : _data = data,
        super._();

  factory _$CryptoExchangeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoExchangeEntityImplFromJson(json);

  final List<Data> _data;
  @override
  List<Data> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CryptoExchangeModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoExchangeEntityImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoExchangeEntityImplCopyWith<_$CryptoExchangeEntityImpl>
      get copyWith =>
          __$$CryptoExchangeEntityImplCopyWithImpl<_$CryptoExchangeEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoExchangeEntityImplToJson(
      this,
    );
  }
}

abstract class _CryptoExchangeEntity extends CryptoExchangeModel {
  const factory _CryptoExchangeEntity({required final List<Data> data}) =
      _$CryptoExchangeEntityImpl;
  const _CryptoExchangeEntity._() : super._();

  factory _CryptoExchangeEntity.fromJson(Map<String, dynamic> json) =
      _$CryptoExchangeEntityImpl.fromJson;

  @override
  List<Data> get data;
  @override
  @JsonKey(ignore: true)
  _$$CryptoExchangeEntityImplCopyWith<_$CryptoExchangeEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get logoUrl => throw _privateConstructorUsedError;
  num get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  num? get cmc_rank => throw _privateConstructorUsedError;
  num? get circulating_supply => throw _privateConstructorUsedError;
  num? get total_supply => throw _privateConstructorUsedError;
  num? get max_supply => throw _privateConstructorUsedError;
  Quoto? get quote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String? logoUrl,
      num id,
      String? name,
      String? symbol,
      String? slug,
      num? cmc_rank,
      num? circulating_supply,
      num? total_supply,
      num? max_supply,
      Quoto? quote});

  $QuotoCopyWith<$Res>? get quote;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoUrl = freezed,
    Object? id = null,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? slug = freezed,
    Object? cmc_rank = freezed,
    Object? circulating_supply = freezed,
    Object? total_supply = freezed,
    Object? max_supply = freezed,
    Object? quote = freezed,
  }) {
    return _then(_value.copyWith(
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      cmc_rank: freezed == cmc_rank
          ? _value.cmc_rank
          : cmc_rank // ignore: cast_nullable_to_non_nullable
              as num?,
      circulating_supply: freezed == circulating_supply
          ? _value.circulating_supply
          : circulating_supply // ignore: cast_nullable_to_non_nullable
              as num?,
      total_supply: freezed == total_supply
          ? _value.total_supply
          : total_supply // ignore: cast_nullable_to_non_nullable
              as num?,
      max_supply: freezed == max_supply
          ? _value.max_supply
          : max_supply // ignore: cast_nullable_to_non_nullable
              as num?,
      quote: freezed == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as Quoto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuotoCopyWith<$Res>? get quote {
    if (_value.quote == null) {
      return null;
    }

    return $QuotoCopyWith<$Res>(_value.quote!, (value) {
      return _then(_value.copyWith(quote: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? logoUrl,
      num id,
      String? name,
      String? symbol,
      String? slug,
      num? cmc_rank,
      num? circulating_supply,
      num? total_supply,
      num? max_supply,
      Quoto? quote});

  @override
  $QuotoCopyWith<$Res>? get quote;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoUrl = freezed,
    Object? id = null,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? slug = freezed,
    Object? cmc_rank = freezed,
    Object? circulating_supply = freezed,
    Object? total_supply = freezed,
    Object? max_supply = freezed,
    Object? quote = freezed,
  }) {
    return _then(_$DataImpl(
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      cmc_rank: freezed == cmc_rank
          ? _value.cmc_rank
          : cmc_rank // ignore: cast_nullable_to_non_nullable
              as num?,
      circulating_supply: freezed == circulating_supply
          ? _value.circulating_supply
          : circulating_supply // ignore: cast_nullable_to_non_nullable
              as num?,
      total_supply: freezed == total_supply
          ? _value.total_supply
          : total_supply // ignore: cast_nullable_to_non_nullable
              as num?,
      max_supply: freezed == max_supply
          ? _value.max_supply
          : max_supply // ignore: cast_nullable_to_non_nullable
              as num?,
      quote: freezed == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as Quoto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl extends _Data {
  const _$DataImpl(
      {required this.logoUrl,
      required this.id,
      required this.name,
      required this.symbol,
      required this.slug,
      required this.cmc_rank,
      required this.circulating_supply,
      required this.total_supply,
      required this.max_supply,
      required this.quote})
      : super._();

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? logoUrl;
  @override
  final num id;
  @override
  final String? name;
  @override
  final String? symbol;
  @override
  final String? slug;
  @override
  final num? cmc_rank;
  @override
  final num? circulating_supply;
  @override
  final num? total_supply;
  @override
  final num? max_supply;
  @override
  final Quoto? quote;

  @override
  String toString() {
    return 'Data(logoUrl: $logoUrl, id: $id, name: $name, symbol: $symbol, slug: $slug, cmc_rank: $cmc_rank, circulating_supply: $circulating_supply, total_supply: $total_supply, max_supply: $max_supply, quote: $quote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.cmc_rank, cmc_rank) ||
                other.cmc_rank == cmc_rank) &&
            (identical(other.circulating_supply, circulating_supply) ||
                other.circulating_supply == circulating_supply) &&
            (identical(other.total_supply, total_supply) ||
                other.total_supply == total_supply) &&
            (identical(other.max_supply, max_supply) ||
                other.max_supply == max_supply) &&
            (identical(other.quote, quote) || other.quote == quote));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, logoUrl, id, name, symbol, slug,
      cmc_rank, circulating_supply, total_supply, max_supply, quote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data extends Data {
  const factory _Data(
      {required final String? logoUrl,
      required final num id,
      required final String? name,
      required final String? symbol,
      required final String? slug,
      required final num? cmc_rank,
      required final num? circulating_supply,
      required final num? total_supply,
      required final num? max_supply,
      required final Quoto? quote}) = _$DataImpl;
  const _Data._() : super._();

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get logoUrl;
  @override
  num get id;
  @override
  String? get name;
  @override
  String? get symbol;
  @override
  String? get slug;
  @override
  num? get cmc_rank;
  @override
  num? get circulating_supply;
  @override
  num? get total_supply;
  @override
  num? get max_supply;
  @override
  Quoto? get quote;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Quoto _$QuotoFromJson(Map<String, dynamic> json) {
  return _Quoto.fromJson(json);
}

/// @nodoc
mixin _$Quoto {
  @JsonKey(name: "USD")
  Currency get usd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotoCopyWith<Quoto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotoCopyWith<$Res> {
  factory $QuotoCopyWith(Quoto value, $Res Function(Quoto) then) =
      _$QuotoCopyWithImpl<$Res, Quoto>;
  @useResult
  $Res call({@JsonKey(name: "USD") Currency usd});

  $CurrencyCopyWith<$Res> get usd;
}

/// @nodoc
class _$QuotoCopyWithImpl<$Res, $Val extends Quoto>
    implements $QuotoCopyWith<$Res> {
  _$QuotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usd = null,
  }) {
    return _then(_value.copyWith(
      usd: null == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as Currency,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res> get usd {
    return $CurrencyCopyWith<$Res>(_value.usd, (value) {
      return _then(_value.copyWith(usd: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuotoImplCopyWith<$Res> implements $QuotoCopyWith<$Res> {
  factory _$$QuotoImplCopyWith(
          _$QuotoImpl value, $Res Function(_$QuotoImpl) then) =
      __$$QuotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "USD") Currency usd});

  @override
  $CurrencyCopyWith<$Res> get usd;
}

/// @nodoc
class __$$QuotoImplCopyWithImpl<$Res>
    extends _$QuotoCopyWithImpl<$Res, _$QuotoImpl>
    implements _$$QuotoImplCopyWith<$Res> {
  __$$QuotoImplCopyWithImpl(
      _$QuotoImpl _value, $Res Function(_$QuotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usd = null,
  }) {
    return _then(_$QuotoImpl(
      usd: null == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as Currency,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuotoImpl extends _Quoto {
  const _$QuotoImpl({@JsonKey(name: "USD") required this.usd}) : super._();

  factory _$QuotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotoImplFromJson(json);

  @override
  @JsonKey(name: "USD")
  final Currency usd;

  @override
  String toString() {
    return 'Quoto(usd: $usd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotoImpl &&
            (identical(other.usd, usd) || other.usd == usd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, usd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotoImplCopyWith<_$QuotoImpl> get copyWith =>
      __$$QuotoImplCopyWithImpl<_$QuotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotoImplToJson(
      this,
    );
  }
}

abstract class _Quoto extends Quoto {
  const factory _Quoto({@JsonKey(name: "USD") required final Currency usd}) =
      _$QuotoImpl;
  const _Quoto._() : super._();

  factory _Quoto.fromJson(Map<String, dynamic> json) = _$QuotoImpl.fromJson;

  @override
  @JsonKey(name: "USD")
  Currency get usd;
  @override
  @JsonKey(ignore: true)
  _$$QuotoImplCopyWith<_$QuotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
mixin _$Currency {
  num? get price => throw _privateConstructorUsedError;
  num? get volume_change_24h => throw _privateConstructorUsedError;
  num? get percent_change_1h => throw _privateConstructorUsedError;
  num? get percent_change_24h => throw _privateConstructorUsedError;
  num? get percent_change_7d => throw _privateConstructorUsedError;
  num? get market_cap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res, Currency>;
  @useResult
  $Res call(
      {num? price,
      num? volume_change_24h,
      num? percent_change_1h,
      num? percent_change_24h,
      num? percent_change_7d,
      num? market_cap});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res, $Val extends Currency>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? volume_change_24h = freezed,
    Object? percent_change_1h = freezed,
    Object? percent_change_24h = freezed,
    Object? percent_change_7d = freezed,
    Object? market_cap = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      volume_change_24h: freezed == volume_change_24h
          ? _value.volume_change_24h
          : volume_change_24h // ignore: cast_nullable_to_non_nullable
              as num?,
      percent_change_1h: freezed == percent_change_1h
          ? _value.percent_change_1h
          : percent_change_1h // ignore: cast_nullable_to_non_nullable
              as num?,
      percent_change_24h: freezed == percent_change_24h
          ? _value.percent_change_24h
          : percent_change_24h // ignore: cast_nullable_to_non_nullable
              as num?,
      percent_change_7d: freezed == percent_change_7d
          ? _value.percent_change_7d
          : percent_change_7d // ignore: cast_nullable_to_non_nullable
              as num?,
      market_cap: freezed == market_cap
          ? _value.market_cap
          : market_cap // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyImplCopyWith<$Res>
    implements $CurrencyCopyWith<$Res> {
  factory _$$CurrencyImplCopyWith(
          _$CurrencyImpl value, $Res Function(_$CurrencyImpl) then) =
      __$$CurrencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? price,
      num? volume_change_24h,
      num? percent_change_1h,
      num? percent_change_24h,
      num? percent_change_7d,
      num? market_cap});
}

/// @nodoc
class __$$CurrencyImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$CurrencyImpl>
    implements _$$CurrencyImplCopyWith<$Res> {
  __$$CurrencyImplCopyWithImpl(
      _$CurrencyImpl _value, $Res Function(_$CurrencyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? volume_change_24h = freezed,
    Object? percent_change_1h = freezed,
    Object? percent_change_24h = freezed,
    Object? percent_change_7d = freezed,
    Object? market_cap = freezed,
  }) {
    return _then(_$CurrencyImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      volume_change_24h: freezed == volume_change_24h
          ? _value.volume_change_24h
          : volume_change_24h // ignore: cast_nullable_to_non_nullable
              as num?,
      percent_change_1h: freezed == percent_change_1h
          ? _value.percent_change_1h
          : percent_change_1h // ignore: cast_nullable_to_non_nullable
              as num?,
      percent_change_24h: freezed == percent_change_24h
          ? _value.percent_change_24h
          : percent_change_24h // ignore: cast_nullable_to_non_nullable
              as num?,
      percent_change_7d: freezed == percent_change_7d
          ? _value.percent_change_7d
          : percent_change_7d // ignore: cast_nullable_to_non_nullable
              as num?,
      market_cap: freezed == market_cap
          ? _value.market_cap
          : market_cap // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyImpl extends _Currency {
  const _$CurrencyImpl(
      {required this.price,
      required this.volume_change_24h,
      required this.percent_change_1h,
      required this.percent_change_24h,
      required this.percent_change_7d,
      required this.market_cap})
      : super._();

  factory _$CurrencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyImplFromJson(json);

  @override
  final num? price;
  @override
  final num? volume_change_24h;
  @override
  final num? percent_change_1h;
  @override
  final num? percent_change_24h;
  @override
  final num? percent_change_7d;
  @override
  final num? market_cap;

  @override
  String toString() {
    return 'Currency(price: $price, volume_change_24h: $volume_change_24h, percent_change_1h: $percent_change_1h, percent_change_24h: $percent_change_24h, percent_change_7d: $percent_change_7d, market_cap: $market_cap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.volume_change_24h, volume_change_24h) ||
                other.volume_change_24h == volume_change_24h) &&
            (identical(other.percent_change_1h, percent_change_1h) ||
                other.percent_change_1h == percent_change_1h) &&
            (identical(other.percent_change_24h, percent_change_24h) ||
                other.percent_change_24h == percent_change_24h) &&
            (identical(other.percent_change_7d, percent_change_7d) ||
                other.percent_change_7d == percent_change_7d) &&
            (identical(other.market_cap, market_cap) ||
                other.market_cap == market_cap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price, volume_change_24h,
      percent_change_1h, percent_change_24h, percent_change_7d, market_cap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      __$$CurrencyImplCopyWithImpl<_$CurrencyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyImplToJson(
      this,
    );
  }
}

abstract class _Currency extends Currency {
  const factory _Currency(
      {required final num? price,
      required final num? volume_change_24h,
      required final num? percent_change_1h,
      required final num? percent_change_24h,
      required final num? percent_change_7d,
      required final num? market_cap}) = _$CurrencyImpl;
  const _Currency._() : super._();

  factory _Currency.fromJson(Map<String, dynamic> json) =
      _$CurrencyImpl.fromJson;

  @override
  num? get price;
  @override
  num? get volume_change_24h;
  @override
  num? get percent_change_1h;
  @override
  num? get percent_change_24h;
  @override
  num? get percent_change_7d;
  @override
  num? get market_cap;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
