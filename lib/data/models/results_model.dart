import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_app/data/models/location_model.dart';
import 'package:rick_app/domain/entities/results_entity.dart';

part 'results_model.freezed.dart';
part 'results_model.g.dart';

@freezed
class Results extends ResultsEntity with _$Results {
  factory Results(
      {required int id,
      required String name,
      required String status,
      required String species,
      required String type,
      required String gender,
      required Location origin,
      required Location location,
      required String image,
      required List<String> episode,
      required DateTime created}) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
