// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fiaccola_stage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FiaccolaStage _$FiaccolaStageFromJson(Map<String, dynamic> json) {
  return _FiaccolaStage.fromJson(json);
}

/// @nodoc
mixin _$FiaccolaStage {
  String get id => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  @MyTimestampConverter()
  DateTime get startTime => throw _privateConstructorUsedError;
  @MyTimestampConverter()
  DateTime get endTime => throw _privateConstructorUsedError;
  @GeoPointConverter()
  GeoPoint get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FiaccolaStageCopyWith<FiaccolaStage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiaccolaStageCopyWith<$Res> {
  factory $FiaccolaStageCopyWith(
          FiaccolaStage value, $Res Function(FiaccolaStage) then) =
      _$FiaccolaStageCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String region,
      String label,
      @MyTimestampConverter() DateTime startTime,
      @MyTimestampConverter() DateTime endTime,
      @GeoPointConverter() GeoPoint location});
}

/// @nodoc
class _$FiaccolaStageCopyWithImpl<$Res>
    implements $FiaccolaStageCopyWith<$Res> {
  _$FiaccolaStageCopyWithImpl(this._value, this._then);

  final FiaccolaStage _value;
  // ignore: unused_field
  final $Res Function(FiaccolaStage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? region = freezed,
    Object? label = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc
abstract class _$$_FiaccolaStageCopyWith<$Res>
    implements $FiaccolaStageCopyWith<$Res> {
  factory _$$_FiaccolaStageCopyWith(
          _$_FiaccolaStage value, $Res Function(_$_FiaccolaStage) then) =
      __$$_FiaccolaStageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String region,
      String label,
      @MyTimestampConverter() DateTime startTime,
      @MyTimestampConverter() DateTime endTime,
      @GeoPointConverter() GeoPoint location});
}

/// @nodoc
class __$$_FiaccolaStageCopyWithImpl<$Res>
    extends _$FiaccolaStageCopyWithImpl<$Res>
    implements _$$_FiaccolaStageCopyWith<$Res> {
  __$$_FiaccolaStageCopyWithImpl(
      _$_FiaccolaStage _value, $Res Function(_$_FiaccolaStage) _then)
      : super(_value, (v) => _then(v as _$_FiaccolaStage));

  @override
  _$_FiaccolaStage get _value => super._value as _$_FiaccolaStage;

  @override
  $Res call({
    Object? id = freezed,
    Object? region = freezed,
    Object? label = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_FiaccolaStage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FiaccolaStage implements _FiaccolaStage {
  const _$_FiaccolaStage(
      {required this.id,
      required this.region,
      required this.label,
      @MyTimestampConverter() required this.startTime,
      @MyTimestampConverter() required this.endTime,
      @GeoPointConverter() required this.location});

  factory _$_FiaccolaStage.fromJson(Map<String, dynamic> json) =>
      _$$_FiaccolaStageFromJson(json);

  @override
  final String id;
  @override
  final String region;
  @override
  final String label;
  @override
  @MyTimestampConverter()
  final DateTime startTime;
  @override
  @MyTimestampConverter()
  final DateTime endTime;
  @override
  @GeoPointConverter()
  final GeoPoint location;

  @override
  String toString() {
    return 'FiaccolaStage(id: $id, region: $region, label: $label, startTime: $startTime, endTime: $endTime, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FiaccolaStage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.region, region) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(region),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$$_FiaccolaStageCopyWith<_$_FiaccolaStage> get copyWith =>
      __$$_FiaccolaStageCopyWithImpl<_$_FiaccolaStage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FiaccolaStageToJson(
      this,
    );
  }
}

abstract class _FiaccolaStage implements FiaccolaStage {
  const factory _FiaccolaStage(
          {required final String id,
          required final String region,
          required final String label,
          @MyTimestampConverter() required final DateTime startTime,
          @MyTimestampConverter() required final DateTime endTime,
          @GeoPointConverter() required final GeoPoint location}) =
      _$_FiaccolaStage;

  factory _FiaccolaStage.fromJson(Map<String, dynamic> json) =
      _$_FiaccolaStage.fromJson;

  @override
  String get id;
  @override
  String get region;
  @override
  String get label;
  @override
  @MyTimestampConverter()
  DateTime get startTime;
  @override
  @MyTimestampConverter()
  DateTime get endTime;
  @override
  @GeoPointConverter()
  GeoPoint get location;
  @override
  @JsonKey(ignore: true)
  _$$_FiaccolaStageCopyWith<_$_FiaccolaStage> get copyWith =>
      throw _privateConstructorUsedError;
}
