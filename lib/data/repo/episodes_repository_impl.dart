import 'package:rick_app/core/exception.dart';
import 'package:rick_app/data/datasources/episodes_remote_datasource.dart';
import 'package:rick_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:rick_app/domain/entities/episodes_entity.dart';
import 'package:rick_app/domain/repo/episode_repo.dart';

class EpisodeRepositoryImpl implements EpisodeRepository {
  final EpisodeRemoteDataSource remoteDataSource;

  EpisodeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, EpisodesEntity>> getAllEpisodes(int page) async {
    try {
      final remoteEpisodes = await remoteDataSource.getAllEpisodes(page);
      return Right(remoteEpisodes);
    } on ServerException {
      return Left(ServerFailure());
    } on NoDataFoundException {
      return Left(NoDataFoundFailure());
    }
  }
}
