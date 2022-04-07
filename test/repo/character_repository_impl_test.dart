import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:rick_app/core/errors/failures.dart';
import 'package:rick_app/data/datasources/api_const.dart';
import 'package:rick_app/data/datasources/characters_remote_datasource.dart';
import 'package:rick_app/data/repo/character_repository_impl.dart';
import 'package:rick_app/domain/entities/character_entity.dart';

import '../utils/character_json.dart';
import 'character_repository_impl_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('fetch Characters list', (() {
    test('return CharacterEntity when respcode is 200', () async {
      final mockClient = MockClient();
      final CharacterRemoteDataSource dataSource =
          CharacterRemoteDataSourceImpl(client: mockClient);
      final CharacterRepositoryImpl repo =
          CharacterRepositoryImpl(remoteDataSource: dataSource);

      Map<String, String> params = {'page': '1', 'name': ''};

      var uri =
          Uri.https(APIConstants.BASE_URL, APIConstants.CHARACTERS_URL, params);

      when(mockClient.get(uri))
          .thenAnswer((_) async => http.Response(characterJson, 200));

      final Either<Failure, CharacterEntity> result =
          await repo.getAllCharacters(1, '');

      expect(result.isRight(), true);

      result.fold(
          (failure) => {},
          (entity) => {
                expect(entity, isA<CharacterEntity>()),
                expect(entity.results.length, 1),
              });
    });

    test('return NoDataFoundFailure when respcode is 404', () async {
      final mockClient = MockClient();
      final CharacterRemoteDataSource dataSource =
          CharacterRemoteDataSourceImpl(client: mockClient);
      final CharacterRepositoryImpl repo =
          CharacterRepositoryImpl(remoteDataSource: dataSource);

      Map<String, String> params = {'page': '1', 'name': ''};

      var uri =
          Uri.https(APIConstants.BASE_URL, APIConstants.CHARACTERS_URL, params);

      when(mockClient.get(uri))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      final Either<Failure, CharacterEntity> result =
          await repo.getAllCharacters(1, '');

      expect(result.isRight(), false);
      expect(result.isLeft(), true);

      result.fold((failure) => expect(failure, isA<NoDataFoundFailure>()),
          (entity) => {});
    });

    test('return ServerFailure when respcode is 500', () async {
      final mockClient = MockClient();
      final CharacterRemoteDataSource dataSource =
          CharacterRemoteDataSourceImpl(client: mockClient);
      final CharacterRepositoryImpl repo =
          CharacterRepositoryImpl(remoteDataSource: dataSource);

      Map<String, String> params = {'page': '1', 'name': ''};

      var uri =
          Uri.https(APIConstants.BASE_URL, APIConstants.CHARACTERS_URL, params);

      when(mockClient.get(uri))
          .thenAnswer((_) async => http.Response('Not Found', 500));

      final Either<Failure, CharacterEntity> result =
          await repo.getAllCharacters(1, '');

      expect(result.isRight(), false);
      expect(result.isLeft(), true);

      result.fold(
          (failure) => expect(failure, isA<ServerFailure>()), (entity) => {});
    });
  }));
}
