// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FailureModelImpl _$$FailureModelImplFromJson(Map<String, dynamic> json) =>
    _$FailureModelImpl(
      status: errorModel.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FailureModelImplToJson(_$FailureModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_$errorModelImpl _$$errorModelImplFromJson(Map<String, dynamic> json) =>
    _$errorModelImpl(
      error_code: json['error_code'] as String?,
      error_message: json['error_message'] as String?,
    );

Map<String, dynamic> _$$errorModelImplToJson(_$errorModelImpl instance) =>
    <String, dynamic>{
      'error_code': instance.error_code,
      'error_message': instance.error_message,
    };
