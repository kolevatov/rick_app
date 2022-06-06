// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Episodes _$$_EpisodesFromJson(Map<String, dynamic> json) => _$_Episodes(
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => SingleEpisode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EpisodesToJson(_$_Episodes instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
