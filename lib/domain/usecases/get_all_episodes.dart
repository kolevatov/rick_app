import 'package:rick_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:rick_app/domain/entities/episodes_entity.dart';
import 'package:rick_app/domain/repo/episode_repo.dart';
import 'package:rick_app/domain/usecases/usecase.dart';

/// Usecase GetAllEpisodes
/// Метод call - получение списка эпизодов с пагинацией
class GetAllEpisodes extends UseCaseSingleParam<EpisodesEntity, int> {
  final EpisodeRepository episodeRepo;

  GetAllEpisodes({required this.episodeRepo});

  @override
  Future<Either<Failure, EpisodesEntity>> call(int page) async {
    return await episodeRepo.getAllEpisodes(page);
  }
}
