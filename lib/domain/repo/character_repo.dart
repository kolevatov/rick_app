import 'package:rick_app/core/errors/failures.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:dartz/dartz.dart';

/*
Контракт с репозиторием данных
getAllCharacters - получение списка персонажей с пагинацией
searchCharacter - поиск персонажа
*/
abstract class CharacterRepository {
  Future<Either<Failure, CharacterEntity>> getAllCharacters(
      int page, String query);
}
