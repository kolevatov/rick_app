import 'package:rick_app/core/exception.dart';
import 'package:rick_app/core/platform/network_info.dart';
import 'package:rick_app/data/datasources/character_local_datasource.dart';
import 'package:rick_app/data/datasources/characters_remote_datasource.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:rick_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:rick_app/domain/repo/character_repo.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final NetworkInfo networkConnection;
  final CharacterRemoteDataSource remoteDataSource;
  final CharacterLocalDataSource localDataSource;

  CharacterRepositoryImpl(
      {required this.networkConnection,
      required this.remoteDataSource,
      required this.localDataSource});

  @override
  Future<Either<Failure, List<CharacterEntity>>> getAllCharacters(
      int page) async {
    if (await networkConnection.isConnected) {
      // Device has connection to Internet
      try {
        final remoteCharacterList =
            await remoteDataSource.getAllCharacters(page);
        localDataSource.putToCache(remoteCharacterList);
        return Right(remoteCharacterList);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      // Device is offline
      try {
        final localCharacterList = await localDataSource.getFromCache();
        return Right(localCharacterList);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<CharacterEntity>>> searchCharacter(
      String query, int page) async {
    if (await networkConnection.isConnected) {
      // Device has connection to Internet
      try {
        final remoteCharacterList =
            await remoteDataSource.searchCharactersByName(query, page);
        return Right(remoteCharacterList);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      // Device is offline
      return Left(ServerFailure());
    }
  }
}
