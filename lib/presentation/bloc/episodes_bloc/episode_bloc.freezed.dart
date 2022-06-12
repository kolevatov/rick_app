// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EpisodeEventTearOff {
  const _$EpisodeEventTearOff();

  EpisodeEventFetch fetch({required int page}) {
    return EpisodeEventFetch(
      page: page,
    );
  }
}

/// @nodoc
const $EpisodeEvent = _$EpisodeEventTearOff();

/// @nodoc
mixin _$EpisodeEvent {
  int get page => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodeEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpisodeEventCopyWith<EpisodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeEventCopyWith<$Res> {
  factory $EpisodeEventCopyWith(
          EpisodeEvent value, $Res Function(EpisodeEvent) then) =
      _$EpisodeEventCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$EpisodeEventCopyWithImpl<$Res> implements $EpisodeEventCopyWith<$Res> {
  _$EpisodeEventCopyWithImpl(this._value, this._then);

  final EpisodeEvent _value;
  // ignore: unused_field
  final $Res Function(EpisodeEvent) _then;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $EpisodeEventFetchCopyWith<$Res>
    implements $EpisodeEventCopyWith<$Res> {
  factory $EpisodeEventFetchCopyWith(
          EpisodeEventFetch value, $Res Function(EpisodeEventFetch) then) =
      _$EpisodeEventFetchCopyWithImpl<$Res>;
  @override
  $Res call({int page});
}

/// @nodoc
class _$EpisodeEventFetchCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res>
    implements $EpisodeEventFetchCopyWith<$Res> {
  _$EpisodeEventFetchCopyWithImpl(
      EpisodeEventFetch _value, $Res Function(EpisodeEventFetch) _then)
      : super(_value, (v) => _then(v as EpisodeEventFetch));

  @override
  EpisodeEventFetch get _value => super._value as EpisodeEventFetch;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(EpisodeEventFetch(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EpisodeEventFetch implements EpisodeEventFetch {
  const _$EpisodeEventFetch({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'EpisodeEvent.fetch(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EpisodeEventFetch &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  $EpisodeEventFetchCopyWith<EpisodeEventFetch> get copyWith =>
      _$EpisodeEventFetchCopyWithImpl<EpisodeEventFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetch,
  }) {
    return fetch(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? fetch,
  }) {
    return fetch?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodeEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class EpisodeEventFetch implements EpisodeEvent {
  const factory EpisodeEventFetch({required int page}) = _$EpisodeEventFetch;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  $EpisodeEventFetchCopyWith<EpisodeEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EpisodeStateTearOff {
  const _$EpisodeStateTearOff();

  EpisodeStateLoading loading() {
    return const EpisodeStateLoading();
  }

  EpisodeStateLoaded loaded({required EpisodesEntity episodes}) {
    return EpisodeStateLoaded(
      episodes: episodes,
    );
  }

  EpisodeStateError error({required String errorMessage}) {
    return EpisodeStateError(
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $EpisodeState = _$EpisodeStateTearOff();

/// @nodoc
mixin _$EpisodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(EpisodesEntity episodes) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EpisodesEntity episodes)? loaded,
    TResult Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EpisodesEntity episodes)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeStateLoading value) loading,
    required TResult Function(EpisodeStateLoaded value) loaded,
    required TResult Function(EpisodeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateLoaded value)? loaded,
    TResult Function(EpisodeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateLoaded value)? loaded,
    TResult Function(EpisodeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeStateCopyWith<$Res> {
  factory $EpisodeStateCopyWith(
          EpisodeState value, $Res Function(EpisodeState) then) =
      _$EpisodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodeStateCopyWithImpl<$Res> implements $EpisodeStateCopyWith<$Res> {
  _$EpisodeStateCopyWithImpl(this._value, this._then);

  final EpisodeState _value;
  // ignore: unused_field
  final $Res Function(EpisodeState) _then;
}

/// @nodoc
abstract class $EpisodeStateLoadingCopyWith<$Res> {
  factory $EpisodeStateLoadingCopyWith(
          EpisodeStateLoading value, $Res Function(EpisodeStateLoading) then) =
      _$EpisodeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodeStateLoadingCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res>
    implements $EpisodeStateLoadingCopyWith<$Res> {
  _$EpisodeStateLoadingCopyWithImpl(
      EpisodeStateLoading _value, $Res Function(EpisodeStateLoading) _then)
      : super(_value, (v) => _then(v as EpisodeStateLoading));

  @override
  EpisodeStateLoading get _value => super._value as EpisodeStateLoading;
}

/// @nodoc

class _$EpisodeStateLoading implements EpisodeStateLoading {
  const _$EpisodeStateLoading();

  @override
  String toString() {
    return 'EpisodeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EpisodeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(EpisodesEntity episodes) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EpisodesEntity episodes)? loaded,
    TResult Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EpisodesEntity episodes)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeStateLoading value) loading,
    required TResult Function(EpisodeStateLoaded value) loaded,
    required TResult Function(EpisodeStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateLoaded value)? loaded,
    TResult Function(EpisodeStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateLoaded value)? loaded,
    TResult Function(EpisodeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EpisodeStateLoading implements EpisodeState {
  const factory EpisodeStateLoading() = _$EpisodeStateLoading;
}

/// @nodoc
abstract class $EpisodeStateLoadedCopyWith<$Res> {
  factory $EpisodeStateLoadedCopyWith(
          EpisodeStateLoaded value, $Res Function(EpisodeStateLoaded) then) =
      _$EpisodeStateLoadedCopyWithImpl<$Res>;
  $Res call({EpisodesEntity episodes});
}

/// @nodoc
class _$EpisodeStateLoadedCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res>
    implements $EpisodeStateLoadedCopyWith<$Res> {
  _$EpisodeStateLoadedCopyWithImpl(
      EpisodeStateLoaded _value, $Res Function(EpisodeStateLoaded) _then)
      : super(_value, (v) => _then(v as EpisodeStateLoaded));

  @override
  EpisodeStateLoaded get _value => super._value as EpisodeStateLoaded;

  @override
  $Res call({
    Object? episodes = freezed,
  }) {
    return _then(EpisodeStateLoaded(
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as EpisodesEntity,
    ));
  }
}

/// @nodoc

class _$EpisodeStateLoaded implements EpisodeStateLoaded {
  const _$EpisodeStateLoaded({required this.episodes});

  @override
  final EpisodesEntity episodes;

  @override
  String toString() {
    return 'EpisodeState.loaded(episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EpisodeStateLoaded &&
            const DeepCollectionEquality().equals(other.episodes, episodes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(episodes));

  @JsonKey(ignore: true)
  @override
  $EpisodeStateLoadedCopyWith<EpisodeStateLoaded> get copyWith =>
      _$EpisodeStateLoadedCopyWithImpl<EpisodeStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(EpisodesEntity episodes) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(episodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EpisodesEntity episodes)? loaded,
    TResult Function(String errorMessage)? error,
  }) {
    return loaded?.call(episodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EpisodesEntity episodes)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(episodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeStateLoading value) loading,
    required TResult Function(EpisodeStateLoaded value) loaded,
    required TResult Function(EpisodeStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateLoaded value)? loaded,
    TResult Function(EpisodeStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateLoaded value)? loaded,
    TResult Function(EpisodeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class EpisodeStateLoaded implements EpisodeState {
  const factory EpisodeStateLoaded({required EpisodesEntity episodes}) =
      _$EpisodeStateLoaded;

  EpisodesEntity get episodes;
  @JsonKey(ignore: true)
  $EpisodeStateLoadedCopyWith<EpisodeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeStateErrorCopyWith<$Res> {
  factory $EpisodeStateErrorCopyWith(
          EpisodeStateError value, $Res Function(EpisodeStateError) then) =
      _$EpisodeStateErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$EpisodeStateErrorCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res>
    implements $EpisodeStateErrorCopyWith<$Res> {
  _$EpisodeStateErrorCopyWithImpl(
      EpisodeStateError _value, $Res Function(EpisodeStateError) _then)
      : super(_value, (v) => _then(v as EpisodeStateError));

  @override
  EpisodeStateError get _value => super._value as EpisodeStateError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(EpisodeStateError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EpisodeStateError implements EpisodeStateError {
  const _$EpisodeStateError({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'EpisodeState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EpisodeStateError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  $EpisodeStateErrorCopyWith<EpisodeStateError> get copyWith =>
      _$EpisodeStateErrorCopyWithImpl<EpisodeStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(EpisodesEntity episodes) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EpisodesEntity episodes)? loaded,
    TResult Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EpisodesEntity episodes)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeStateLoading value) loading,
    required TResult Function(EpisodeStateLoaded value) loaded,
    required TResult Function(EpisodeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateLoaded value)? loaded,
    TResult Function(EpisodeStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeStateLoading value)? loading,
    TResult Function(EpisodeStateLoaded value)? loaded,
    TResult Function(EpisodeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EpisodeStateError implements EpisodeState {
  const factory EpisodeStateError({required String errorMessage}) =
      _$EpisodeStateError;

  String get errorMessage;
  @JsonKey(ignore: true)
  $EpisodeStateErrorCopyWith<EpisodeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
