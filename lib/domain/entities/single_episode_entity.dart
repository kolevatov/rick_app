// ignore_for_file: non_constant_identifier_names

class SingleEpisodeEntity {
  final int id;
  final String name;
  final String air_date;
  final String episode;
  final List<String> characters;
  final String url;
  final DateTime created;

  SingleEpisodeEntity({
    required this.id,
    required this.name,
    required this.air_date,
    required this.episode,
    required this.characters,
    required this.url,
    required this.created,
  });
}
