// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episodes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Episodes _$EpisodesFromJson(Map<String, dynamic> json) {
  return _Episodes.fromJson(json);
}

/// @nodoc
class _$EpisodesTearOff {
  const _$EpisodesTearOff();

  _Episodes call({required Info info, required List<SingleEpisode> results}) {
    return _Episodes(
      info: info,
      results: results,
    );
  }

  Episodes fromJson(Map<String, Object?> json) {
    return Episodes.fromJson(json);
  }
}

/// @nodoc
const $Episodes = _$EpisodesTearOff();

/// @nodoc
mixin _$Episodes {
  Info get info => throw _privateConstructorUsedError;
  List<SingleEpisode> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodesCopyWith<Episodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesCopyWith<$Res> {
  factory $EpisodesCopyWith(Episodes value, $Res Function(Episodes) then) =
      _$EpisodesCopyWithImpl<$Res>;
  $Res call({Info info, List<SingleEpisode> results});

  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class _$EpisodesCopyWithImpl<$Res> implements $EpisodesCopyWith<$Res> {
  _$EpisodesCopyWithImpl(this._value, this._then);

  final Episodes _value;
  // ignore: unused_field
  final $Res Function(Episodes) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SingleEpisode>,
    ));
  }

  @override
  $InfoCopyWith<$Res> get info {
    return $InfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$EpisodesCopyWith<$Res> implements $EpisodesCopyWith<$Res> {
  factory _$EpisodesCopyWith(_Episodes value, $Res Function(_Episodes) then) =
      __$EpisodesCopyWithImpl<$Res>;
  @override
  $Res call({Info info, List<SingleEpisode> results});

  @override
  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class __$EpisodesCopyWithImpl<$Res> extends _$EpisodesCopyWithImpl<$Res>
    implements _$EpisodesCopyWith<$Res> {
  __$EpisodesCopyWithImpl(_Episodes _value, $Res Function(_Episodes) _then)
      : super(_value, (v) => _then(v as _Episodes));

  @override
  _Episodes get _value => super._value as _Episodes;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_Episodes(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SingleEpisode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Episodes implements _Episodes {
  const _$_Episodes({required this.info, required this.results});

  factory _$_Episodes.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodesFromJson(json);

  @override
  final Info info;
  @override
  final List<SingleEpisode> results;

  @override
  String toString() {
    return 'Episodes(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Episodes &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$EpisodesCopyWith<_Episodes> get copyWith =>
      __$EpisodesCopyWithImpl<_Episodes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodesToJson(this);
  }
}

abstract class _Episodes implements Episodes {
  const factory _Episodes(
      {required Info info, required List<SingleEpisode> results}) = _$_Episodes;

  factory _Episodes.fromJson(Map<String, dynamic> json) = _$_Episodes.fromJson;

  @override
  Info get info;
  @override
  List<SingleEpisode> get results;
  @override
  @JsonKey(ignore: true)
  _$EpisodesCopyWith<_Episodes> get copyWith =>
      throw _privateConstructorUsedError;
}
