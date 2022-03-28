import 'package:rick_app/domain/entities/character_entity.dart';

abstract class SearchState {
  SearchState();
}

// Empty state - начальное состояние, поиск персонажей не выполнялся
class CharacterSearchEmpty extends SearchState {}

// Запрос в процессе выполнения, данные еще не получены
class CharacterSearchLoading extends SearchState {}

// Запрос выполнен успешно, данные получены
class CharacterSearchLoaded extends SearchState {
  final List<CharacterEntity> characters;

  CharacterSearchLoaded({required this.characters});
}

// Запрос выполнен неуспешно, получена ошибка
class CharacterSearchError extends SearchState {
  final String errorMessage;

  CharacterSearchError({required this.errorMessage});
}
