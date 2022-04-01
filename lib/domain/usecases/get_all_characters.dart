import 'package:rick_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:rick_app/domain/repo/character_repo.dart';
import 'package:rick_app/domain/usecases/usecase.dart';

class GetAllCharacters extends UseCase<CharacterEntity, int, String> {
  final CharacterRepository characterRepo;

  GetAllCharacters({required this.characterRepo});

  @override
  Future<Either<Failure, CharacterEntity>> call(int page, String query) async {
    return await characterRepo.getAllCharacters(page, query);
  }
}
