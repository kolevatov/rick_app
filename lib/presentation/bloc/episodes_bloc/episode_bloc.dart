import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_app/core/errors/errors_const.dart';
import 'package:rick_app/core/errors/failures.dart';
import 'package:rick_app/domain/entities/episodes_entity.dart';
import 'package:rick_app/domain/usecases/get_all_episodes.dart';

part 'episode_bloc.freezed.dart';
part 'episode_event.dart';
part 'episode_state.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  final GetAllEpisodes getAllEpisodes;

  EpisodeBloc({required this.getAllEpisodes})
      : super(const EpisodeState.loading()) {
    on<EpisodeEventFetch>((event, emit) async {
      emit(const EpisodeState.loading());

      final failureOrData = await getAllEpisodes.call(event.page);

      failureOrData.fold(
          (failure) => emit(
                EpisodeState.error(errorMessage: _mapFailureToMessage(failure)),
              ), (episodes) {
        emit(EpisodeState.loaded(episodes: episodes));
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
