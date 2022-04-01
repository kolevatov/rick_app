import 'package:rick_app/core/exception.dart';
import 'package:rick_app/data/datasources/characters_remote_datasource.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:rick_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:rick_app/domain/repo/character_repo.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CharacterRemoteDataSource remoteDataSource;

  CharacterRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, CharacterEntity>> getAllCharacters(
      int page, String query) async {
    try {
      final remoteCharacters =
          await remoteDataSource.getAllCharacters(page, query);
      return Right(remoteCharacters);
    } on ServerException {
      return Left(ServerFailure());
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
    }
  }
}
