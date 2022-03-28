import 'dart:convert';
import 'dart:developer';
import 'package:rick_app/core/exception.dart';
import 'package:rick_app/data/datasources/cache_const.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rick_app/data/models/character_model.dart';

abstract class CharacterLocalDataSource {
  /*
  Сохраняет список объектов в локальный кэш устройства ввиде json строки
  При любых ошибках генерирует [CacheException]
  */
  Future<List<CharacterModel>> getFromCache();

  /*
  Загружает список объектов из локального кэша устройства ввиде json строки
  При любых ошибках генерирует [CacheException]
  */
  Future<void> putToCache(List<dynamic> entities);
}

class CharacterLocalDataSourceImpl implements CharacterLocalDataSource {
  final SharedPreferences localCache;

  CharacterLocalDataSourceImpl({required this.localCache});

  @override
  Future<List<CharacterModel>> getFromCache() {
    final cacheData = localCache.getStringList(CacheConstants.CHARACTER_CACHE);

    if (cacheData!.isNotEmpty) {
      // Got data from cache
      List<CharacterModel> charactersList = cacheData
          .map((value) => CharacterModel.fromJson(json.decode(value)))
          .toList();

      log('getFromCache() => ${cacheData.length} items');

      return Future.value(charactersList);
    } else {
      // Cache is empty
      throw CacheException();
    }
  }

  @override
  Future<void> putToCache(List<dynamic> entities) {
    final List<String> cacheData = (entities as List<CharacterModel>)
        .map((value) => jsonEncode(value.toJson()))
        .toList();

    localCache.setStringList(CacheConstants.CHARACTER_CACHE, cacheData);
    log('putToCache() => ${cacheData.length} items');
    return Future.value();
  }
}
