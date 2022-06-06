import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_app/data/models/info_model.dart';
import 'package:rick_app/data/models/single_episode_model.dart';
import 'package:rick_app/domain/entities/episodes_entity.dart';

part 'episodes_model.freezed.dart';
part 'episodes_model.g.dart';

@freezed
class Episodes extends EpisodesEntity with _$Episodes {
  const factory Episodes(
      {required Info info, required List<SingleEpisode> results}) = _Episodes;

  factory Episodes.fromJson(Map<String, dynamic> json) =>
      _$EpisodesFromJson(json);
}
