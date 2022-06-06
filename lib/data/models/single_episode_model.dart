// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_app/domain/entities/single_episode_entity.dart';

part 'single_episode_model.freezed.dart';
part 'single_episode_model.g.dart';

@freezed
class SingleEpisode extends SingleEpisodeEntity with _$SingleEpisode {
  const factory SingleEpisode(
      {required int id,
      required String name,
      required String air_date,
      required String episode,
      required List<String> characters,
      required String url,
      required DateTime created}) = _SingleEpisode;

  factory SingleEpisode.fromJson(Map<String, dynamic> json) =>
      _$SingleEpisodeFromJson(json);
}
