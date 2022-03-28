import 'package:rick_app/domain/entities/character_entity.dart';

abstract class CharacterState {
  CharacterState();
}

// Empty state - начальное состояние, запрос списка персонажей не выполнялся
class RequestCharacterEmpty extends CharacterState {}

// Запрос в процессе выполнения, данные еще не получены
class RequestCharacterLoading extends CharacterState {
  final bool isFirstFetch;
  final List<CharacterEntity> oldCharacterList;

  RequestCharacterLoading(
      {required this.oldCharacterList, required this.isFirstFetch});
}

// Запрос выполнен успешно, список персонажей загружен
class RequestCharacterLoaded extends CharacterState {
  final List<CharacterEntity> characters;

  RequestCharacterLoaded({required this.characters});
}

// Запрос выполнен неуспешно, получена ошибка
class RequestCharacterError extends CharacterState {
  final String errorMessage;

  RequestCharacterError({required this.errorMessage});
}
