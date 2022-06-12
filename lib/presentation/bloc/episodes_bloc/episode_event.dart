part of 'episode_bloc.dart';

@freezed
class EpisodeEvent with _$EpisodeEvent {
  const factory EpisodeEvent.fetch({required int page}) = EpisodeEventFetch;
}
