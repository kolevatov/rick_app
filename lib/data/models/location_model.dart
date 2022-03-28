import 'package:rick_app/domain/entities/location_entity.dart';

class LocationModel extends LocationEntity {
  LocationModel({required String name, required String url})
      : super(name: name, url: url);

  // decode from JSON
  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
        name: json['name'] as String, url: json['url'] as String);
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'url': url};
  }
}
