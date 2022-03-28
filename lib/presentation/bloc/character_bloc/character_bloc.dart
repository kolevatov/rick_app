import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_app/core/errors/errors_const.dart';
import 'package:rick_app/core/errors/failures.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:rick_app/domain/usecases/get_all_characters.dart';
import 'package:rick_app/presentation/bloc/character_bloc/character_event.dart';
import 'package:rick_app/presentation/bloc/character_bloc/character_state.dart';

class RequestCharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final GetAllCharacters getAllCharacters;
  List<CharacterEntity> oldCharacterList;
  bool isFirstFetch;

  int _page = 1;
  final int emptyParam = 0;

  RequestCharacterBloc(
      {required this.getAllCharacters,
      this.oldCharacterList = const [],
      this.isFirstFetch = true})
      : super(RequestCharacterEmpty()) {
    on<RequestCharacterListEvent>((event, emit) async {
      log('RequestCharacterBloc => oldCharacterList length is ${oldCharacterList.length} items');

      emit(RequestCharacterLoading(
          oldCharacterList: oldCharacterList, isFirstFetch: isFirstFetch));

      final failureOrData = await getAllCharacters.call(_page, emptyParam);

      log('RequestCharacterBloc: Received characters list');
      failureOrData.fold(
          (failure) => emit(
                RequestCharacterError(
                    errorMessage: _mapFailureToMessage(failure)),
              ), (charactersList) {
        _page++;
        isFirstFetch = false;
        log('RequestCharacterBloc => new list loaded. oldCharacterList length is ${oldCharacterList.length} items');
        oldCharacterList = oldCharacterList + charactersList;
        emit(
          RequestCharacterLoaded(characters: oldCharacterList),
        );
      });
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return ErrorConstants.SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return ErrorConstants.CACHE_FAILURE_MESSAGE;
      default:
        return ErrorConstants.UNEXPECTED_ERROR;
    }
  }
}
