import 'package:crypto_v1/core/failures/api/api_failures.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Param, Type> {
  const UseCase();
  Future<Either<ApiFailure, Type>> call({required Param param});
}
