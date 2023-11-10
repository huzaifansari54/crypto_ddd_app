// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FailureModel _$FailureModelFromJson(Map<String, dynamic> json) {
  return _FailureModel.fromJson(json);
}

/// @nodoc
mixin _$FailureModel {
  errorModel get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureModelCopyWith<FailureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureModelCopyWith<$Res> {
  factory $FailureModelCopyWith(
          FailureModel value, $Res Function(FailureModel) then) =
      _$FailureModelCopyWithImpl<$Res, FailureModel>;
  @useResult
  $Res call({errorModel status});

  $errorModelCopyWith<$Res> get status;
}

/// @nodoc
class _$FailureModelCopyWithImpl<$Res, $Val extends FailureModel>
    implements $FailureModelCopyWith<$Res> {
  _$FailureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as errorModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $errorModelCopyWith<$Res> get status {
    return $errorModelCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FailureModelImplCopyWith<$Res>
    implements $FailureModelCopyWith<$Res> {
  factory _$$FailureModelImplCopyWith(
          _$FailureModelImpl value, $Res Function(_$FailureModelImpl) then) =
      __$$FailureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({errorModel status});

  @override
  $errorModelCopyWith<$Res> get status;
}

/// @nodoc
class __$$FailureModelImplCopyWithImpl<$Res>
    extends _$FailureModelCopyWithImpl<$Res, _$FailureModelImpl>
    implements _$$FailureModelImplCopyWith<$Res> {
  __$$FailureModelImplCopyWithImpl(
      _$FailureModelImpl _value, $Res Function(_$FailureModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$FailureModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as errorModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailureModelImpl extends _FailureModel {
  const _$FailureModelImpl({required this.status}) : super._();

  factory _$FailureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureModelImplFromJson(json);

  @override
  final errorModel status;

  @override
  String toString() {
    return 'FailureModel(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureModelImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureModelImplCopyWith<_$FailureModelImpl> get copyWith =>
      __$$FailureModelImplCopyWithImpl<_$FailureModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureModelImplToJson(
      this,
    );
  }
}

abstract class _FailureModel extends FailureModel {
  const factory _FailureModel({required final errorModel status}) =
      _$FailureModelImpl;
  const _FailureModel._() : super._();

  factory _FailureModel.fromJson(Map<String, dynamic> json) =
      _$FailureModelImpl.fromJson;

  @override
  errorModel get status;
  @override
  @JsonKey(ignore: true)
  _$$FailureModelImplCopyWith<_$FailureModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

errorModel _$errorModelFromJson(Map<String, dynamic> json) {
  return _errorModel.fromJson(json);
}

/// @nodoc
mixin _$errorModel {
  String? get error_code => throw _privateConstructorUsedError;
  String? get error_message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $errorModelCopyWith<errorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $errorModelCopyWith<$Res> {
  factory $errorModelCopyWith(
          errorModel value, $Res Function(errorModel) then) =
      _$errorModelCopyWithImpl<$Res, errorModel>;
  @useResult
  $Res call({String? error_code, String? error_message});
}

/// @nodoc
class _$errorModelCopyWithImpl<$Res, $Val extends errorModel>
    implements $errorModelCopyWith<$Res> {
  _$errorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error_code = freezed,
    Object? error_message = freezed,
  }) {
    return _then(_value.copyWith(
      error_code: freezed == error_code
          ? _value.error_code
          : error_code // ignore: cast_nullable_to_non_nullable
              as String?,
      error_message: freezed == error_message
          ? _value.error_message
          : error_message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$errorModelImplCopyWith<$Res>
    implements $errorModelCopyWith<$Res> {
  factory _$$errorModelImplCopyWith(
          _$errorModelImpl value, $Res Function(_$errorModelImpl) then) =
      __$$errorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error_code, String? error_message});
}

/// @nodoc
class __$$errorModelImplCopyWithImpl<$Res>
    extends _$errorModelCopyWithImpl<$Res, _$errorModelImpl>
    implements _$$errorModelImplCopyWith<$Res> {
  __$$errorModelImplCopyWithImpl(
      _$errorModelImpl _value, $Res Function(_$errorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error_code = freezed,
    Object? error_message = freezed,
  }) {
    return _then(_$errorModelImpl(
      error_code: freezed == error_code
          ? _value.error_code
          : error_code // ignore: cast_nullable_to_non_nullable
              as String?,
      error_message: freezed == error_message
          ? _value.error_message
          : error_message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$errorModelImpl implements _errorModel {
  const _$errorModelImpl(
      {required this.error_code, required this.error_message});

  factory _$errorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$errorModelImplFromJson(json);

  @override
  final String? error_code;
  @override
  final String? error_message;

  @override
  String toString() {
    return 'errorModel(error_code: $error_code, error_message: $error_message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$errorModelImpl &&
            (identical(other.error_code, error_code) ||
                other.error_code == error_code) &&
            (identical(other.error_message, error_message) ||
                other.error_message == error_message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error_code, error_message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$errorModelImplCopyWith<_$errorModelImpl> get copyWith =>
      __$$errorModelImplCopyWithImpl<_$errorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$errorModelImplToJson(
      this,
    );
  }
}

abstract class _errorModel implements errorModel {
  const factory _errorModel(
      {required final String? error_code,
      required final String? error_message}) = _$errorModelImpl;

  factory _errorModel.fromJson(Map<String, dynamic> json) =
      _$errorModelImpl.fromJson;

  @override
  String? get error_code;
  @override
  String? get error_message;
  @override
  @JsonKey(ignore: true)
  _$$errorModelImplCopyWith<_$errorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
