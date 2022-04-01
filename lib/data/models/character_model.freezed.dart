// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Characters _$CharactersFromJson(Map<String, dynamic> json) {
  return _Characters.fromJson(json);
}

/// @nodoc
class _$CharactersTearOff {
  const _$CharactersTearOff();

  _Characters call({required Info info, required List<Results> results}) {
    return _Characters(
      info: info,
      results: results,
    );
  }

  Characters fromJson(Map<String, Object?> json) {
    return Characters.fromJson(json);
  }
}

/// @nodoc
const $Characters = _$CharactersTearOff();

/// @nodoc
mixin _$Characters {
  Info get info => throw _privateConstructorUsedError;
  List<Results> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersCopyWith<Characters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersCopyWith<$Res> {
  factory $CharactersCopyWith(
          Characters value, $Res Function(Characters) then) =
      _$CharactersCopyWithImpl<$Res>;
  $Res call({Info info, List<Results> results});

  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class _$CharactersCopyWithImpl<$Res> implements $CharactersCopyWith<$Res> {
  _$CharactersCopyWithImpl(this._value, this._then);

  final Characters _value;
  // ignore: unused_field
  final $Res Function(Characters) _then;

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
              as List<Results>,
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
abstract class _$CharactersCopyWith<$Res> implements $CharactersCopyWith<$Res> {
  factory _$CharactersCopyWith(
          _Characters value, $Res Function(_Characters) then) =
      __$CharactersCopyWithImpl<$Res>;
  @override
  $Res call({Info info, List<Results> results});

  @override
  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class __$CharactersCopyWithImpl<$Res> extends _$CharactersCopyWithImpl<$Res>
    implements _$CharactersCopyWith<$Res> {
  __$CharactersCopyWithImpl(
      _Characters _value, $Res Function(_Characters) _then)
      : super(_value, (v) => _then(v as _Characters));

  @override
  _Characters get _value => super._value as _Characters;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_Characters(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Characters implements _Characters {
  const _$_Characters({required this.info, required this.results});

  factory _$_Characters.fromJson(Map<String, dynamic> json) =>
      _$$_CharactersFromJson(json);

  @override
  final Info info;
  @override
  final List<Results> results;

  @override
  String toString() {
    return 'Characters(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Characters &&
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
  _$CharactersCopyWith<_Characters> get copyWith =>
      __$CharactersCopyWithImpl<_Characters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharactersToJson(this);
  }
}

abstract class _Characters implements Characters {
  const factory _Characters(
      {required Info info, required List<Results> results}) = _$_Characters;

  factory _Characters.fromJson(Map<String, dynamic> json) =
      _$_Characters.fromJson;

  @override
  Info get info;
  @override
  List<Results> get results;
  @override
  @JsonKey(ignore: true)
  _$CharactersCopyWith<_Characters> get copyWith =>
      throw _privateConstructorUsedError;
}
