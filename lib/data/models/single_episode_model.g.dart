// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SingleEpisode _$$_SingleEpisodeFromJson(Map<String, dynamic> json) =>
    _$_SingleEpisode(
      id: json['id'] as int,
      name: json['name'] as String,
      air_date: json['air_date'] as String,
      episode: json['episode'] as String,
      characters: (json['characters'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      url: json['url'] as String,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$_SingleEpisodeToJson(_$_SingleEpisode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'air_date': instance.air_date,
      'episode': instance.episode,
      'characters': instance.characters,
      'url': instance.url,
      'created': instance.created.toIso8601String(),
    };
