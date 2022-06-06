// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_episode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleEpisode _$SingleEpisodeFromJson(Map<String, dynamic> json) {
  return _SingleEpisode.fromJson(json);
}

/// @nodoc
class _$SingleEpisodeTearOff {
  const _$SingleEpisodeTearOff();

  _SingleEpisode call(
      {required int id,
      required String name,
      required String air_date,
      required String episode,
      required List<String> characters,
      required String url,
      required DateTime created}) {
    return _SingleEpisode(
      id: id,
      name: name,
      air_date: air_date,
      episode: episode,
      characters: characters,
      url: url,
      created: created,
    );
  }

  SingleEpisode fromJson(Map<String, Object?> json) {
    return SingleEpisode.fromJson(json);
  }
}

/// @nodoc
const $SingleEpisode = _$SingleEpisodeTearOff();

/// @nodoc
mixin _$SingleEpisode {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get air_date => throw _privateConstructorUsedError;
  String get episode => throw _privateConstructorUsedError;
  List<String> get characters => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleEpisodeCopyWith<SingleEpisode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleEpisodeCopyWith<$Res> {
  factory $SingleEpisodeCopyWith(
          SingleEpisode value, $Res Function(SingleEpisode) then) =
      _$SingleEpisodeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String air_date,
      String episode,
      List<String> characters,
      String url,
      DateTime created});
}

/// @nodoc
class _$SingleEpisodeCopyWithImpl<$Res>
    implements $SingleEpisodeCopyWith<$Res> {
  _$SingleEpisodeCopyWithImpl(this._value, this._then);

  final SingleEpisode _value;
  // ignore: unused_field
  final $Res Function(SingleEpisode) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? air_date = freezed,
    Object? episode = freezed,
    Object? characters = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      air_date: air_date == freezed
          ? _value.air_date
          : air_date // ignore: cast_nullable_to_non_nullable
              as String,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$SingleEpisodeCopyWith<$Res>
    implements $SingleEpisodeCopyWith<$Res> {
  factory _$SingleEpisodeCopyWith(
          _SingleEpisode value, $Res Function(_SingleEpisode) then) =
      __$SingleEpisodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String air_date,
      String episode,
      List<String> characters,
      String url,
      DateTime created});
}

/// @nodoc
class __$SingleEpisodeCopyWithImpl<$Res>
    extends _$SingleEpisodeCopyWithImpl<$Res>
    implements _$SingleEpisodeCopyWith<$Res> {
  __$SingleEpisodeCopyWithImpl(
      _SingleEpisode _value, $Res Function(_SingleEpisode) _then)
      : super(_value, (v) => _then(v as _SingleEpisode));

  @override
  _SingleEpisode get _value => super._value as _SingleEpisode;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? air_date = freezed,
    Object? episode = freezed,
    Object? characters = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_SingleEpisode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      air_date: air_date == freezed
          ? _value.air_date
          : air_date // ignore: cast_nullable_to_non_nullable
              as String,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleEpisode implements _SingleEpisode {
  const _$_SingleEpisode(
      {required this.id,
      required this.name,
      required this.air_date,
      required this.episode,
      required this.characters,
      required this.url,
      required this.created});

  factory _$_SingleEpisode.fromJson(Map<String, dynamic> json) =>
      _$$_SingleEpisodeFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String air_date;
  @override
  final String episode;
  @override
  final List<String> characters;
  @override
  final String url;
  @override
  final DateTime created;

  @override
  String toString() {
    return 'SingleEpisode(id: $id, name: $name, air_date: $air_date, episode: $episode, characters: $characters, url: $url, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SingleEpisode &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.air_date, air_date) &&
            const DeepCollectionEquality().equals(other.episode, episode) &&
            const DeepCollectionEquality()
                .equals(other.characters, characters) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(air_date),
      const DeepCollectionEquality().hash(episode),
      const DeepCollectionEquality().hash(characters),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(created));

  @JsonKey(ignore: true)
  @override
  _$SingleEpisodeCopyWith<_SingleEpisode> get copyWith =>
      __$SingleEpisodeCopyWithImpl<_SingleEpisode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingleEpisodeToJson(this);
  }
}

abstract class _SingleEpisode implements SingleEpisode {
  const factory _SingleEpisode(
      {required int id,
      required String name,
      required String air_date,
      required String episode,
      required List<String> characters,
      required String url,
      required DateTime created}) = _$_SingleEpisode;

  factory _SingleEpisode.fromJson(Map<String, dynamic> json) =
      _$_SingleEpisode.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get air_date;
  @override
  String get episode;
  @override
  List<String> get characters;
  @override
  String get url;
  @override
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$SingleEpisodeCopyWith<_SingleEpisode> get copyWith =>
      throw _privateConstructorUsedError;
}
