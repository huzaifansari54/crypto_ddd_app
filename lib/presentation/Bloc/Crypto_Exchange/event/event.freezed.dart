// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CryptoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> query) getAllCryptoExchange,
    required TResult Function(Map<String, dynamic> query, filter fil) filter,
    required TResult Function(Map<String, dynamic> query) search,
    required TResult Function(String query1) searchLocaly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult? Function(Map<String, dynamic> query, filter fil)? filter,
    TResult? Function(Map<String, dynamic> query)? search,
    TResult? Function(String query1)? searchLocaly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult Function(Map<String, dynamic> query, filter fil)? filter,
    TResult Function(Map<String, dynamic> query)? search,
    TResult Function(String query1)? searchLocaly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAllCryptoExchange,
    required TResult Function(_Filter value) filter,
    required TResult Function(_Search value) search,
    required TResult Function(_SearchLocaly value) searchLocaly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAllCryptoExchange,
    TResult? Function(_Filter value)? filter,
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchLocaly value)? searchLocaly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAllCryptoExchange,
    TResult Function(_Filter value)? filter,
    TResult Function(_Search value)? search,
    TResult Function(_SearchLocaly value)? searchLocaly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoEventCopyWith<$Res> {
  factory $CryptoEventCopyWith(
          CryptoEvent value, $Res Function(CryptoEvent) then) =
      _$CryptoEventCopyWithImpl<$Res, CryptoEvent>;
}

/// @nodoc
class _$CryptoEventCopyWithImpl<$Res, $Val extends CryptoEvent>
    implements $CryptoEventCopyWith<$Res> {
  _$CryptoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllImplCopyWith<$Res> {
  factory _$$GetAllImplCopyWith(
          _$GetAllImpl value, $Res Function(_$GetAllImpl) then) =
      __$$GetAllImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> query});
}

/// @nodoc
class __$$GetAllImplCopyWithImpl<$Res>
    extends _$CryptoEventCopyWithImpl<$Res, _$GetAllImpl>
    implements _$$GetAllImplCopyWith<$Res> {
  __$$GetAllImplCopyWithImpl(
      _$GetAllImpl _value, $Res Function(_$GetAllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$GetAllImpl(
      query: null == query
          ? _value._query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$GetAllImpl implements _GetAll {
  const _$GetAllImpl({required final Map<String, dynamic> query})
      : _query = query;

  final Map<String, dynamic> _query;
  @override
  Map<String, dynamic> get query {
    if (_query is EqualUnmodifiableMapView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_query);
  }

  @override
  String toString() {
    return 'CryptoEvent.getAllCryptoExchange(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllImpl &&
            const DeepCollectionEquality().equals(other._query, _query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_query));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllImplCopyWith<_$GetAllImpl> get copyWith =>
      __$$GetAllImplCopyWithImpl<_$GetAllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> query) getAllCryptoExchange,
    required TResult Function(Map<String, dynamic> query, filter fil) filter,
    required TResult Function(Map<String, dynamic> query) search,
    required TResult Function(String query1) searchLocaly,
  }) {
    return getAllCryptoExchange(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult? Function(Map<String, dynamic> query, filter fil)? filter,
    TResult? Function(Map<String, dynamic> query)? search,
    TResult? Function(String query1)? searchLocaly,
  }) {
    return getAllCryptoExchange?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult Function(Map<String, dynamic> query, filter fil)? filter,
    TResult Function(Map<String, dynamic> query)? search,
    TResult Function(String query1)? searchLocaly,
    required TResult orElse(),
  }) {
    if (getAllCryptoExchange != null) {
      return getAllCryptoExchange(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAllCryptoExchange,
    required TResult Function(_Filter value) filter,
    required TResult Function(_Search value) search,
    required TResult Function(_SearchLocaly value) searchLocaly,
  }) {
    return getAllCryptoExchange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAllCryptoExchange,
    TResult? Function(_Filter value)? filter,
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchLocaly value)? searchLocaly,
  }) {
    return getAllCryptoExchange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAllCryptoExchange,
    TResult Function(_Filter value)? filter,
    TResult Function(_Search value)? search,
    TResult Function(_SearchLocaly value)? searchLocaly,
    required TResult orElse(),
  }) {
    if (getAllCryptoExchange != null) {
      return getAllCryptoExchange(this);
    }
    return orElse();
  }
}

abstract class _GetAll implements CryptoEvent {
  const factory _GetAll({required final Map<String, dynamic> query}) =
      _$GetAllImpl;

  Map<String, dynamic> get query;
  @JsonKey(ignore: true)
  _$$GetAllImplCopyWith<_$GetAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterImplCopyWith<$Res> {
  factory _$$FilterImplCopyWith(
          _$FilterImpl value, $Res Function(_$FilterImpl) then) =
      __$$FilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> query, filter fil});
}

/// @nodoc
class __$$FilterImplCopyWithImpl<$Res>
    extends _$CryptoEventCopyWithImpl<$Res, _$FilterImpl>
    implements _$$FilterImplCopyWith<$Res> {
  __$$FilterImplCopyWithImpl(
      _$FilterImpl _value, $Res Function(_$FilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? fil = null,
  }) {
    return _then(_$FilterImpl(
      query: null == query
          ? _value._query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      fil: null == fil
          ? _value.fil
          : fil // ignore: cast_nullable_to_non_nullable
              as filter,
    ));
  }
}

/// @nodoc

class _$FilterImpl implements _Filter {
  const _$FilterImpl(
      {required final Map<String, dynamic> query, required this.fil})
      : _query = query;

  final Map<String, dynamic> _query;
  @override
  Map<String, dynamic> get query {
    if (_query is EqualUnmodifiableMapView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_query);
  }

  @override
  final filter fil;

  @override
  String toString() {
    return 'CryptoEvent.filter(query: $query, fil: $fil)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterImpl &&
            const DeepCollectionEquality().equals(other._query, _query) &&
            (identical(other.fil, fil) || other.fil == fil));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_query), fil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      __$$FilterImplCopyWithImpl<_$FilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> query) getAllCryptoExchange,
    required TResult Function(Map<String, dynamic> query, filter fil) filter,
    required TResult Function(Map<String, dynamic> query) search,
    required TResult Function(String query1) searchLocaly,
  }) {
    return filter(query, fil);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult? Function(Map<String, dynamic> query, filter fil)? filter,
    TResult? Function(Map<String, dynamic> query)? search,
    TResult? Function(String query1)? searchLocaly,
  }) {
    return filter?.call(query, fil);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult Function(Map<String, dynamic> query, filter fil)? filter,
    TResult Function(Map<String, dynamic> query)? search,
    TResult Function(String query1)? searchLocaly,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(query, fil);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAllCryptoExchange,
    required TResult Function(_Filter value) filter,
    required TResult Function(_Search value) search,
    required TResult Function(_SearchLocaly value) searchLocaly,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAllCryptoExchange,
    TResult? Function(_Filter value)? filter,
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchLocaly value)? searchLocaly,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAllCryptoExchange,
    TResult Function(_Filter value)? filter,
    TResult Function(_Search value)? search,
    TResult Function(_SearchLocaly value)? searchLocaly,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _Filter implements CryptoEvent {
  const factory _Filter(
      {required final Map<String, dynamic> query,
      required final filter fil}) = _$FilterImpl;

  Map<String, dynamic> get query;
  filter get fil;
  @JsonKey(ignore: true)
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> query});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$CryptoEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchImpl(
      query: null == query
          ? _value._query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl({required final Map<String, dynamic> query})
      : _query = query;

  final Map<String, dynamic> _query;
  @override
  Map<String, dynamic> get query {
    if (_query is EqualUnmodifiableMapView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_query);
  }

  @override
  String toString() {
    return 'CryptoEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            const DeepCollectionEquality().equals(other._query, _query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_query));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> query) getAllCryptoExchange,
    required TResult Function(Map<String, dynamic> query, filter fil) filter,
    required TResult Function(Map<String, dynamic> query) search,
    required TResult Function(String query1) searchLocaly,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult? Function(Map<String, dynamic> query, filter fil)? filter,
    TResult? Function(Map<String, dynamic> query)? search,
    TResult? Function(String query1)? searchLocaly,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult Function(Map<String, dynamic> query, filter fil)? filter,
    TResult Function(Map<String, dynamic> query)? search,
    TResult Function(String query1)? searchLocaly,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAllCryptoExchange,
    required TResult Function(_Filter value) filter,
    required TResult Function(_Search value) search,
    required TResult Function(_SearchLocaly value) searchLocaly,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAllCryptoExchange,
    TResult? Function(_Filter value)? filter,
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchLocaly value)? searchLocaly,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAllCryptoExchange,
    TResult Function(_Filter value)? filter,
    TResult Function(_Search value)? search,
    TResult Function(_SearchLocaly value)? searchLocaly,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements CryptoEvent {
  const factory _Search({required final Map<String, dynamic> query}) =
      _$SearchImpl;

  Map<String, dynamic> get query;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLocalyImplCopyWith<$Res> {
  factory _$$SearchLocalyImplCopyWith(
          _$SearchLocalyImpl value, $Res Function(_$SearchLocalyImpl) then) =
      __$$SearchLocalyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query1});
}

/// @nodoc
class __$$SearchLocalyImplCopyWithImpl<$Res>
    extends _$CryptoEventCopyWithImpl<$Res, _$SearchLocalyImpl>
    implements _$$SearchLocalyImplCopyWith<$Res> {
  __$$SearchLocalyImplCopyWithImpl(
      _$SearchLocalyImpl _value, $Res Function(_$SearchLocalyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query1 = null,
  }) {
    return _then(_$SearchLocalyImpl(
      query1: null == query1
          ? _value.query1
          : query1 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchLocalyImpl implements _SearchLocaly {
  const _$SearchLocalyImpl({required this.query1});

  @override
  final String query1;

  @override
  String toString() {
    return 'CryptoEvent.searchLocaly(query1: $query1)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocalyImpl &&
            (identical(other.query1, query1) || other.query1 == query1));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query1);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocalyImplCopyWith<_$SearchLocalyImpl> get copyWith =>
      __$$SearchLocalyImplCopyWithImpl<_$SearchLocalyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> query) getAllCryptoExchange,
    required TResult Function(Map<String, dynamic> query, filter fil) filter,
    required TResult Function(Map<String, dynamic> query) search,
    required TResult Function(String query1) searchLocaly,
  }) {
    return searchLocaly(query1);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult? Function(Map<String, dynamic> query, filter fil)? filter,
    TResult? Function(Map<String, dynamic> query)? search,
    TResult? Function(String query1)? searchLocaly,
  }) {
    return searchLocaly?.call(query1);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult Function(Map<String, dynamic> query, filter fil)? filter,
    TResult Function(Map<String, dynamic> query)? search,
    TResult Function(String query1)? searchLocaly,
    required TResult orElse(),
  }) {
    if (searchLocaly != null) {
      return searchLocaly(query1);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAllCryptoExchange,
    required TResult Function(_Filter value) filter,
    required TResult Function(_Search value) search,
    required TResult Function(_SearchLocaly value) searchLocaly,
  }) {
    return searchLocaly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAllCryptoExchange,
    TResult? Function(_Filter value)? filter,
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchLocaly value)? searchLocaly,
  }) {
    return searchLocaly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAllCryptoExchange,
    TResult Function(_Filter value)? filter,
    TResult Function(_Search value)? search,
    TResult Function(_SearchLocaly value)? searchLocaly,
    required TResult orElse(),
  }) {
    if (searchLocaly != null) {
      return searchLocaly(this);
    }
    return orElse();
  }
}

abstract class _SearchLocaly implements CryptoEvent {
  const factory _SearchLocaly({required final String query1}) =
      _$SearchLocalyImpl;

  String get query1;
  @JsonKey(ignore: true)
  _$$SearchLocalyImplCopyWith<_$SearchLocalyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
