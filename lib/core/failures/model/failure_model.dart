import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure_model.freezed.dart';
part 'failure_model.g.dart';

@freezed
abstract class FailureModel with _$FailureModel {
  const FailureModel._();
  const factory FailureModel({required errorModel status}) = _FailureModel;
  factory FailureModel.fromJson(Map<String, Object?> json) =>
      _$FailureModelFromJson(json);
}

@freezed
abstract class errorModel with _$errorModel {
  const factory errorModel(
      {required String? error_code,
      required String? error_message}) = _errorModel;
  factory errorModel.fromJson(Map<String, Object?> json) =>
      _$errorModelFromJson(json);
}



// "status": {
// "timestamp": "2018-06-02T22:51:28.209Z",
// "error_code": 400,
// "error_message": "Invalid value for \"id\"",
// "elapsed": 10,
// "credit_count": 0
// }
