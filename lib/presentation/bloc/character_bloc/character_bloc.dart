import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_app/core/errors/errors_const.dart';
import 'package:rick_app/core/errors/failures.dart';
import 'package:rick_app/domain/entities/character_entity.dart';
import 'package:rick_app/domain/usecases/get_all_characters.dart';

part 'character_bloc.freezed.dart';
part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final GetAllCharacters getAllCharacters;

  CharacterBloc({required this.getAllCharacters})
      : super(const CharacterState.loading()) {
    on<CharacterEventFetch>((event, emit) async {
      emit(const CharacterState.loading());

      final failureOrData =
          await getAllCharacters.call(event.page, event.query);

      failureOrData.fold(
          (failure) => emit(
                CharacterState.error(
                    errorMessage: _mapFailureToMessage(failure)),
              ), (characters) {
        emit(CharacterState.loaded(characters: characters));
      });
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return ErrorConstants.SERVER_FAILURE_MESSAGE;
      case NoDataFoundFailure:
        return ErrorConstants.NO_DATA_FOUND;
      default:
        return ErrorConstants.UNEXPECTED_ERROR;
    }
  }
}
