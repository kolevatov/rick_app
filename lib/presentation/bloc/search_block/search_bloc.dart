import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_app/core/errors/errors_const.dart';
import 'package:rick_app/core/errors/failures.dart';
import 'package:rick_app/domain/usecases/search_characters.dart';
import 'package:rick_app/presentation/bloc/search_block/search_event.dart';
import 'package:rick_app/presentation/bloc/search_block/search_state.dart';

class CharacterSearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchCharacters searchCharacters;

  int _page = 1;
  String _lastQuery = '';

  CharacterSearchBloc({required this.searchCharacters})
      : super(CharacterSearchEmpty()) {
    on<CharacterSearchEvent>((event, emit) async {
      emit(CharacterSearchLoading());

      if (event.searchQuery != _lastQuery) {
        // Новый поисковый запрос
        _lastQuery = event.searchQuery;
        _page = 1;
      } else {
        // Следующая страница данных для предыдущего запроса
        _page++;
      }

      final failureOrData =
          await searchCharacters.call(event.searchQuery, _page);

      failureOrData.fold(
          (failure) => emit(CharacterSearchError(
              errorMessage: _mapFailureToMessage(failure))), (charactersList) {
        log('CharacterSearchBloc => received result with ${charactersList.length} items');
        emit(CharacterSearchLoaded(characters: charactersList));
      });
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return ErrorConstants.NO_DATA_FOUND;
      case CacheFailure:
        return ErrorConstants.CACHE_FAILURE_MESSAGE;
      default:
        return ErrorConstants.UNEXPECTED_ERROR;
    }
  }
}
