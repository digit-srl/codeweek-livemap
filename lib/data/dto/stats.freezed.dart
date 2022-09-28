// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatsDTO _$StatsDTOFromJson(Map<String, dynamic> json) {
  return _StatsDTO.fromJson(json);
}

/// @nodoc
mixin _$StatsDTO {
  int get liveEventsCount => throw _privateConstructorUsedError;
  int get loc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsDTOCopyWith<StatsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsDTOCopyWith<$Res> {
  factory $StatsDTOCopyWith(StatsDTO value, $Res Function(StatsDTO) then) =
      _$StatsDTOCopyWithImpl<$Res>;
  $Res call({int liveEventsCount, int loc});
}

/// @nodoc
class _$StatsDTOCopyWithImpl<$Res> implements $StatsDTOCopyWith<$Res> {
  _$StatsDTOCopyWithImpl(this._value, this._then);

  final StatsDTO _value;
  // ignore: unused_field
  final $Res Function(StatsDTO) _then;

  @override
  $Res call({
    Object? liveEventsCount = freezed,
    Object? loc = freezed,
  }) {
    return _then(_value.copyWith(
      liveEventsCount: liveEventsCount == freezed
          ? _value.liveEventsCount
          : liveEventsCount // ignore: cast_nullable_to_non_nullable
              as int,
      loc: loc == freezed
          ? _value.loc
          : loc // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_StatsDTOCopyWith<$Res> implements $StatsDTOCopyWith<$Res> {
  factory _$$_StatsDTOCopyWith(
          _$_StatsDTO value, $Res Function(_$_StatsDTO) then) =
      __$$_StatsDTOCopyWithImpl<$Res>;
  @override
  $Res call({int liveEventsCount, int loc});
}

/// @nodoc
class __$$_StatsDTOCopyWithImpl<$Res> extends _$StatsDTOCopyWithImpl<$Res>
    implements _$$_StatsDTOCopyWith<$Res> {
  __$$_StatsDTOCopyWithImpl(
      _$_StatsDTO _value, $Res Function(_$_StatsDTO) _then)
      : super(_value, (v) => _then(v as _$_StatsDTO));

  @override
  _$_StatsDTO get _value => super._value as _$_StatsDTO;

  @override
  $Res call({
    Object? liveEventsCount = freezed,
    Object? loc = freezed,
  }) {
    return _then(_$_StatsDTO(
      liveEventsCount: liveEventsCount == freezed
          ? _value.liveEventsCount
          : liveEventsCount // ignore: cast_nullable_to_non_nullable
              as int,
      loc: loc == freezed
          ? _value.loc
          : loc // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatsDTO implements _StatsDTO {
  const _$_StatsDTO({required this.liveEventsCount, required this.loc});

  factory _$_StatsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_StatsDTOFromJson(json);

  @override
  final int liveEventsCount;
  @override
  final int loc;

  @override
  String toString() {
    return 'StatsDTO(liveEventsCount: $liveEventsCount, loc: $loc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatsDTO &&
            const DeepCollectionEquality()
                .equals(other.liveEventsCount, liveEventsCount) &&
            const DeepCollectionEquality().equals(other.loc, loc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(liveEventsCount),
      const DeepCollectionEquality().hash(loc));

  @JsonKey(ignore: true)
  @override
  _$$_StatsDTOCopyWith<_$_StatsDTO> get copyWith =>
      __$$_StatsDTOCopyWithImpl<_$_StatsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsDTOToJson(
      this,
    );
  }
}

abstract class _StatsDTO implements StatsDTO {
  const factory _StatsDTO(
      {required final int liveEventsCount,
      required final int loc}) = _$_StatsDTO;

  factory _StatsDTO.fromJson(Map<String, dynamic> json) = _$_StatsDTO.fromJson;

  @override
  int get liveEventsCount;
  @override
  int get loc;
  @override
  @JsonKey(ignore: true)
  _$$_StatsDTOCopyWith<_$_StatsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
