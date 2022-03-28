import 'location_entity.dart';
import 'package:equatable/equatable.dart';

class CharacterEntity extends Equatable {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final LocationEntity origin;
  final LocationEntity location;
  final String image;
  final List<String> episode;
  final DateTime created;

  const CharacterEntity(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.type,
      required this.gender,
      required this.origin,
      required this.location,
      required this.image,
      required this.episode,
      required this.created});

  @override
  List<Object?> get props => [name];

  @override
  bool get stringify => true;
}
