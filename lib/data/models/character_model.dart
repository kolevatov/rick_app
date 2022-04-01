import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_app/data/models/info_model.dart';
import 'package:rick_app/data/models/results_model.dart';
import 'package:rick_app/domain/entities/character_entity.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class Characters extends CharacterEntity with _$Characters {
  const factory Characters(
      {required Info info, required List<Results> results}) = _Characters;

  factory Characters.fromJson(Map<String, dynamic> json) =>
      _$CharactersFromJson(json);
}
