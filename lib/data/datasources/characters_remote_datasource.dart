import 'dart:developer';

import 'package:rick_app/core/exception.dart';
import 'package:rick_app/data/datasources/api_const.dart';
import 'package:rick_app/data/models/character_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class CharacterRemoteDataSource {
  /*
  Запрос списка персонажей с поддержкой пагинации
  При любых ошибках генерит [ServerException]
  */
  Future<List<CharacterModel>> getAllCharacters(int page);

  /*
  Запрос списка персонажей по имени
  При любых ошибках генерит [ServerException]
  */
  Future<List<CharacterModel>> searchCharactersByName(String name, int page);
}

class CharacterRemoteDataSourceImpl implements CharacterRemoteDataSource {
  int searchResultMaxPage = 0;

  Future<List<CharacterModel>> _getCharacterList(
      Uri uri, Map<String, dynamic> params) async {
    var response = await http.get(uri);
    log('API endpoint responce: ' + response.statusCode.toString());
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      return (jsonData['results'] as List)
          .map((entity) => CharacterModel.fromJson(entity))
          .toList();
    } else if (response.statusCode == 404) {
      // No data found
      return [];
    } else {
      // request is failed
      throw ServerException();
    }
  }

  @override
  Future<List<CharacterModel>> getAllCharacters(int page) {
    Map<String, String> params = {'page': page.toString()};

    log('call getAllCharacters');
    var uri =
        Uri.https(APIConstants.BASE_URL, APIConstants.CHARACTERS_URL, params);

    log('getAllCharacters request URL: ' + uri.toString());

    return _getCharacterList(uri, params);
  }

  @override
  Future<List<CharacterModel>> searchCharactersByName(String name, int page) {
    Map<String, String> params = {'name': name, 'page': page.toString()};

    var uri =
        Uri.https(APIConstants.BASE_URL, APIConstants.CHARACTERS_URL, params);

    log('getAllCharacters request URL: ' + uri.toString());

    return _getCharacterList(uri, params);
  }
}
