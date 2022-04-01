import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_app/domain/entities/location_entity.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class Location extends LocationEntity with _$Location {
  const factory Location({required String name, required String url}) =
      _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
