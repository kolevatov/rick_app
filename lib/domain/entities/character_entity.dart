import 'package:rick_app/domain/entities/info_entity.dart';
import 'package:rick_app/domain/entities/results_entity.dart';

class CharacterEntity {
  final InfoEntity info;
  final List<ResultsEntity> results;

  const CharacterEntity({required this.info, required this.results});
}
