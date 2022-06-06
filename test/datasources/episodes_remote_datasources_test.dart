import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rick_app/core/exception.dart';
import 'package:rick_app/data/datasources/api_const.dart';
import 'package:rick_app/data/datasources/episodes_remote_datasource.dart';
import 'package:rick_app/data/models/episodes_model.dart';
import 'package:rick_app/domain/entities/episodes_entity.dart';
import '../utils/episodes_json.dart';
import 'characters_remote_datasources_test.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([http.Client])
void main() {
  group('fetch Episodes list', (() {
    test('return NoDataFoundException when endpoint return 404 respcode',
        () async {
      final mockClient = MockClient();
      final EpisodeRemoteDataSource dataSource =
          EpisodeRemoteDataSourceImpl(client: mockClient);
      Map<String, String> params = {'page': '1'};

      var uri =
          Uri.https(APIConstants.BASE_URL, APIConstants.EPISODES_URL, params);

      when(mockClient.get(uri))
          .thenAnswer((_) async => http.Response('Not found', 404));

      expect(
          dataSource.getAllEpisodes(1), throwsA(isA<NoDataFoundException>()));
    });

    test('return ServerException when endpoint return failed respcode',
        () async {
      final mockClient = MockClient();
      final EpisodeRemoteDataSource dataSource =
          EpisodeRemoteDataSourceImpl(client: mockClient);
      Map<String, String> params = {'page': '1'};

      var uri =
          Uri.https(APIConstants.BASE_URL, APIConstants.EPISODES_URL, params);

      when(mockClient.get(uri))
          .thenAnswer((_) async => http.Response('Not found', 500));

      expect(dataSource.getAllEpisodes(1), throwsA(isA<ServerException>()));
    });

    test('return Episodes list when endpoint return 200 respcode', () async {
      final mockClient = MockClient();
      final EpisodeRemoteDataSource dataSource =
          EpisodeRemoteDataSourceImpl(client: mockClient);
      Map<String, String> params = {'page': '1'};

      var uri =
          Uri.https(APIConstants.BASE_URL, APIConstants.EPISODES_URL, params);

      when(mockClient.get(uri))
          .thenAnswer((_) async => http.Response(episodesJson, 200));

      final EpisodesEntity episodes = await dataSource.getAllEpisodes(1);

      expect(episodes, isA<Episodes>());
      expect(episodes.info.count == 51, true);
      expect(episodes.results.length, 20);
    });
  }));
}
