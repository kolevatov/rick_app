import 'package:rick_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:rick_app/domain/entities/episodes_entity.dart';

/// Контракт с репозиторием данных.
/// getAllEpisodes - получение списка эпизодов
abstract class EpisodeRepository {
  Future<Either<Failure, EpisodesEntity>> getAllEpisodes(
      int page, String query);
}
