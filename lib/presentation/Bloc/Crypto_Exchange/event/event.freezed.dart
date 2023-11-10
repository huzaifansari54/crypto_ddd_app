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
    required TResult Function(filter fil) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult? Function(filter fil)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult Function(filter fil)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAllCryptoExchange,
    required TResult Function(_Filter value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAllCryptoExchange,
    TResult? Function(_Filter value)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAllCryptoExchange,
    TResult Function(_Filter value)? filter,
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
    required TResult Function(filter fil) filter,
  }) {
    return getAllCryptoExchange(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult? Function(filter fil)? filter,
  }) {
    return getAllCryptoExchange?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult Function(filter fil)? filter,
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
  }) {
    return getAllCryptoExchange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAllCryptoExchange,
    TResult? Function(_Filter value)? filter,
  }) {
    return getAllCryptoExchange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAllCryptoExchange,
    TResult Function(_Filter value)? filter,
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
  $Res call({filter fil});
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
    Object? fil = null,
  }) {
    return _then(_$FilterImpl(
      fil: null == fil
          ? _value.fil
          : fil // ignore: cast_nullable_to_non_nullable
              as filter,
    ));
  }
}

/// @nodoc

class _$FilterImpl implements _Filter {
  const _$FilterImpl({required this.fil});

  @override
  final filter fil;

  @override
  String toString() {
    return 'CryptoEvent.filter(fil: $fil)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterImpl &&
            (identical(other.fil, fil) || other.fil == fil));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      __$$FilterImplCopyWithImpl<_$FilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> query) getAllCryptoExchange,
    required TResult Function(filter fil) filter,
  }) {
    return filter(fil);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult? Function(filter fil)? filter,
  }) {
    return filter?.call(fil);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> query)? getAllCryptoExchange,
    TResult Function(filter fil)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(fil);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAllCryptoExchange,
    required TResult Function(_Filter value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAllCryptoExchange,
    TResult? Function(_Filter value)? filter,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAllCryptoExchange,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _Filter implements CryptoEvent {
  const factory _Filter({required final filter fil}) = _$FilterImpl;

  filter get fil;
  @JsonKey(ignore: true)
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
