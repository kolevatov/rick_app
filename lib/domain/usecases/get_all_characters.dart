import 'package:rick_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:rick_app/domain/repo/character_repo.dart';
import 'package:rick_app/domain/usecases/usecase.dart';

class GetAllCharacters extends UseCase<List<CharacterEntity>, int, int> {
  final CharacterRepository characterRepo;

  GetAllCharacters({required this.characterRepo});

  @override
  Future<Either<Failure, List<CharacterEntity>>> call(
      int first, int second) async {
    return await characterRepo.getAllCharacters(first);
  }
}
