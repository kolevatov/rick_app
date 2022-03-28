import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:rick_app/core/platform/network_info.dart';
import 'package:rick_app/data/datasources/character_local_datasource.dart';
import 'package:rick_app/data/datasources/characters_remote_datasource.dart';
import 'package:rick_app/data/repo/character_repository_impl.dart';
import 'package:rick_app/domain/repo/character_repo.dart';
import 'package:rick_app/domain/usecases/get_all_characters.dart';
import 'package:rick_app/domain/usecases/search_characters.dart';
import 'package:rick_app/presentation/bloc/character_bloc/character_bloc.dart';
import 'package:rick_app/presentation/bloc/search_block/search_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(() => RequestCharacterBloc(
        getAllCharacters: sl<GetAllCharacters>(),
      ));

  sl.registerFactory(() => CharacterSearchBloc(
        searchCharacters: sl<SearchCharacters>(),
      ));

  // Usecases
  sl.registerLazySingleton(() => GetAllCharacters(
        characterRepo: sl<CharacterRepository>(),
      ));
  sl.registerLazySingleton(() => SearchCharacters(
        characterRepository: sl<CharacterRepository>(),
      ));

  // Repositories
  sl.registerLazySingleton<CharacterRepository>(() => CharacterRepositoryImpl(
        remoteDataSource: sl<CharacterRemoteDataSource>(),
        localDataSource: sl<CharacterLocalDataSource>(),
        networkConnection: sl<NetworkInfo>(),
      ));

  // DataSources
  sl.registerLazySingleton<CharacterRemoteDataSource>(
      () => CharacterRemoteDataSourceImpl());
  sl.registerLazySingleton<CharacterLocalDataSource>(
      () => CharacterLocalDataSourceImpl(
            localCache: sl<SharedPreferences>(),
          ));

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(
        connection: sl<InternetConnectionChecker>(),
      ));

  // External packages
  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  sl.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());
}
