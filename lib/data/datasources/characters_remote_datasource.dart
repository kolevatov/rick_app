import 'dart:developer';
import 'package:rick_app/core/exception.dart';
import 'package:rick_app/data/datasources/api_const.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:rick_app/data/models/character_model.dart';

abstract class CharacterRemoteDataSource {
  /*
  Запрос списка персонажей с поддержкой пагинации
  При любых ошибках генерит [ServerException]
  */
  Future<Characters> getAllCharacters(int page, String query);
}

class CharacterRemoteDataSourceImpl implements CharacterRemoteDataSource {
  int searchResultMaxPage = 0;

  Future<Characters> _getCharacterList(
      Uri uri, Map<String, dynamic> params) async {
    var response = await http.get(uri);

    log('API endpoint status code: ' + response.statusCode.toString());

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      return Characters.fromJson(jsonData);
    } else if (response.statusCode == 404) {
      // No data found
      throw NoDataFoundException();
    } else {
      // request is failed
      throw ServerException();
    }
  }

  @override
  Future<Characters> getAllCharacters(int page, String query) {
    Map<String, String> params = {'page': page.toString(), 'name': query};

    var uri =
        Uri.https(APIConstants.BASE_URL, APIConstants.CHARACTERS_URL, params);

    log('getAllCharacters request URL: ' + uri.toString());

    return _getCharacterList(uri, params);
  }
}
