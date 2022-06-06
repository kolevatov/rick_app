import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:rick_app/core/exception.dart';
import 'package:rick_app/data/datasources/api_const.dart';
import '../models/episodes_model.dart';

/// Абстрактный класс.
/// Контракт с источником данных
abstract class EpisodeRemoteDataSource {
  /// Получение списка эпизодов с поддержкой пагинации
  /// При ошибках выкидывает [ServerException]
  Future<Episodes> getAllEpisodes(int page);
}

class EpisodeRemoteDataSourceImpl implements EpisodeRemoteDataSource {
  http.Client client;
  int searchResultMaxPage = 0;

  EpisodeRemoteDataSourceImpl({required this.client});

  Future<Episodes> _getCharacterList(
      Uri uri, Map<String, dynamic> params) async {
    var response = await client.get(uri);

    log('Episodes API endpoint status code: ' + response.statusCode.toString());

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      return Episodes.fromJson(jsonData);
    } else if (response.statusCode == 404) {
      // No data found

      throw NoDataFoundException();
    } else {
      // request is failed

      throw ServerException();
    }
  }

  @override
  Future<Episodes> getAllEpisodes(int page) {
    Map<String, String> params = {'page': page.toString()};

    var uri =
        Uri.https(APIConstants.BASE_URL, APIConstants.EPISODES_URL, params);

    print('getAllEpisodes request URL: ' + uri.toString());
    log('getAllEpisodes request URL: ' + uri.toString());

    return _getCharacterList(uri, params);
  }
}
