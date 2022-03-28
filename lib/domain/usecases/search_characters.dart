import 'package:rick_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:rick_app/domain/repo/character_repo.dart';
import 'package:rick_app/domain/usecases/usecase.dart';

class SearchCharacters extends UseCase<List<CharacterEntity>, String, int> {
  final CharacterRepository characterRepository;

  SearchCharacters({required this.characterRepository});

  @override
  Future<Either<Failure, List<CharacterEntity>>> call(
      String first, int second) async {
    return await characterRepository.searchCharacter(first, second);
  }
}
