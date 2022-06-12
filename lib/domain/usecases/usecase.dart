import 'package:dartz/dartz.dart';
import 'package:rick_app/core/errors/failures.dart';

abstract class UseCase<Type, firstParam, secondParam> {
  Future<Either<Failure, Type>> call(firstParam page, secondParam query);
}

abstract class UseCaseSingleParam<Type, firstParam> {
  Future<Either<Failure, Type>> call(firstParam page);
}
