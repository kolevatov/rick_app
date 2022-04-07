import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rick_app/core/exception.dart';
import 'package:rick_app/data/datasources/api_const.dart';
import 'package:rick_app/data/datasources/characters_remote_datasource.dart';
import 'package:rick_app/data/models/character_model.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import '../utils/character_json.dart';
import 'characters_remote_datasources_test.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([http.Client])
void main() {
  group('fetch Characters list', (() {
    test('return NoDataFoundException when endpoint return 404 respcode',
        () async {
      final mockClient = MockClient();
      final CharacterRemoteDataSource dataSource =
          CharacterRemoteDataSourceImpl(client: mockClient);
      Map<String, String> params = {'page': '1', 'name': ''};

      var uri =
          Uri.https(APIConstants.BASE_URL, APIConstants.CHARACTERS_URL, params);

      when(mockClient.get(uri))
          .thenAnswer((_) async => http.Response('Not found', 404));

      expect(dataSource.getAllCharacters(1, ''),
          throwsA(isA<NoDataFoundException>()));
    });

    test('return ServerException when endpoint return failed respcode',
        () async {
      final mockClient = MockClient();
      final CharacterRemoteDataSource dataSource =
          CharacterRemoteDataSourceImpl(client: mockClient);
      Map<String, String> params = {'page': '1', 'name': ''};

      var uri =
          Uri.https(APIConstants.BASE_URL, APIConstants.CHARACTERS_URL, params);

      when(mockClient.get(uri))
          .thenAnswer((_) async => http.Response('Not found', 500));

      expect(
          dataSource.getAllCharacters(1, ''), throwsA(isA<ServerException>()));
    });

    test('return all Characters list when endpoint return 200 respcode',
        () async {
      final mockClient = MockClient();
      final CharacterRemoteDataSource dataSource =
          CharacterRemoteDataSourceImpl(client: mockClient);
      Map<String, String> params = {'page': '1', 'name': ''};

      var uri =
          Uri.https(APIConstants.BASE_URL, APIConstants.CHARACTERS_URL, params);

      when(mockClient.get(uri))
          .thenAnswer((_) async => http.Response(characterJson, 200));

      final CharacterEntity characters =
          await dataSource.getAllCharacters(1, '');

      expect(characters, isA<Characters>());
      expect(characters.info.count > 0, true);
      expect(characters.results.length, 1);
    });

    test('return Characters list by name', () async {
      final mockClient = MockClient();
      final CharacterRemoteDataSource dataSource =
          CharacterRemoteDataSourceImpl(client: mockClient);
      Map<String, String> params = {'page': '1', 'name': 'Rick'};

      var uri =
          Uri.https(APIConstants.BASE_URL, APIConstants.CHARACTERS_URL, params);

      when(mockClient.get(uri))
          .thenAnswer((_) async => http.Response(characterJson, 200));

      final CharacterEntity characters =
          await dataSource.getAllCharacters(1, 'Rick');

      expect(characters, isA<Characters>());
      expect(characters.info.count > 0, true);
      expect(characters.results.length, 1);
    });
  }));
}
