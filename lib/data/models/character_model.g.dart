// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Characters _$$_CharactersFromJson(Map<String, dynamic> json) =>
    _$_Characters(
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CharactersToJson(_$_Characters instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
