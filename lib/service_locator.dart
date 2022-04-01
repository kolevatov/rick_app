import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:rick_app/core/platform/network_info.dart';
import 'package:rick_app/data/datasources/characters_remote_datasource.dart';
import 'package:rick_app/data/repo/character_repository_impl.dart';
import 'package:rick_app/domain/repo/character_repo.dart';
import 'package:rick_app/domain/usecases/get_all_characters.dart';
import 'package:rick_app/presentation/bloc/character_bloc/character_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(() => CharacterBloc(
        getAllCharacters: sl<GetAllCharacters>(),
      ));

  // Usecases
  sl.registerLazySingleton(() => GetAllCharacters(
        characterRepo: sl<CharacterRepository>(),
      ));

  // Repositories
  sl.registerLazySingleton<CharacterRepository>(() => CharacterRepositoryImpl(
        remoteDataSource: sl<CharacterRemoteDataSource>(),
      ));

  // DataSources
  sl.registerLazySingleton<CharacterRemoteDataSource>(
      () => CharacterRemoteDataSourceImpl());

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(
        connection: sl<InternetConnectionChecker>(),
      ));

  // External packages
  sl.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());
}
