part of 'episode_bloc.dart';

@freezed
class EpisodeState with _$EpisodeState {
  const factory EpisodeState.loading() = EpisodeStateLoading;
  const factory EpisodeState.loaded({required EpisodesEntity episodes}) =
      EpisodeStateLoaded;
  const factory EpisodeState.error({required String errorMessage}) =
      EpisodeStateError;
}
