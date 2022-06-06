import 'package:rick_app/domain/entities/single_episode_entity.dart';
import 'package:rick_app/domain/entities/info_entity.dart';

class EpisodesEntity {
  final InfoEntity info;
  final List<SingleEpisodeEntity> results;

  const EpisodesEntity({required this.info, required this.results});
}
