// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coding_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CodingEventDTO _$CodingEventDTOFromJson(Map<String, dynamic> json) {
  return _CodingEventDTO.fromJson(json);
}

/// @nodoc
mixin _$CodingEventDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @MyDateTimeConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;
  @MyDateTimeConverter()
  DateTime? get endDate => throw _privateConstructorUsedError;
  int? get averageAge => throw _privateConstructorUsedError;
  int? get participants => throw _privateConstructorUsedError;
  int? get loc => throw _privateConstructorUsedError;
  @TypeOfCodeConverter()
  TypeOfCode? get typeOfCode => throw _privateConstructorUsedError;
  @GeoPointConverter()
  GeoPoint get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodingEventDTOCopyWith<CodingEventDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodingEventDTOCopyWith<$Res> {
  factory $CodingEventDTOCopyWith(
          CodingEventDTO value, $Res Function(CodingEventDTO) then) =
      _$CodingEventDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String status,
      @MyDateTimeConverter() DateTime? startDate,
      @MyDateTimeConverter() DateTime? endDate,
      int? averageAge,
      int? participants,
      int? loc,
      @TypeOfCodeConverter() TypeOfCode? typeOfCode,
      @GeoPointConverter() GeoPoint location});
}

/// @nodoc
class _$CodingEventDTOCopyWithImpl<$Res>
    implements $CodingEventDTOCopyWith<$Res> {
  _$CodingEventDTOCopyWithImpl(this._value, this._then);

  final CodingEventDTO _value;
  // ignore: unused_field
  final $Res Function(CodingEventDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? averageAge = freezed,
    Object? participants = freezed,
    Object? loc = freezed,
    Object? typeOfCode = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      averageAge: averageAge == freezed
          ? _value.averageAge
          : averageAge // ignore: cast_nullable_to_non_nullable
              as int?,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
      loc: loc == freezed
          ? _value.loc
          : loc // ignore: cast_nullable_to_non_nullable
              as int?,
      typeOfCode: typeOfCode == freezed
          ? _value.typeOfCode
          : typeOfCode // ignore: cast_nullable_to_non_nullable
              as TypeOfCode?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc
abstract class _$$_CodingEventDTOCopyWith<$Res>
    implements $CodingEventDTOCopyWith<$Res> {
  factory _$$_CodingEventDTOCopyWith(
          _$_CodingEventDTO value, $Res Function(_$_CodingEventDTO) then) =
      __$$_CodingEventDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String status,
      @MyDateTimeConverter() DateTime? startDate,
      @MyDateTimeConverter() DateTime? endDate,
      int? averageAge,
      int? participants,
      int? loc,
      @TypeOfCodeConverter() TypeOfCode? typeOfCode,
      @GeoPointConverter() GeoPoint location});
}

/// @nodoc
class __$$_CodingEventDTOCopyWithImpl<$Res>
    extends _$CodingEventDTOCopyWithImpl<$Res>
    implements _$$_CodingEventDTOCopyWith<$Res> {
  __$$_CodingEventDTOCopyWithImpl(
      _$_CodingEventDTO _value, $Res Function(_$_CodingEventDTO) _then)
      : super(_value, (v) => _then(v as _$_CodingEventDTO));

  @override
  _$_CodingEventDTO get _value => super._value as _$_CodingEventDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? averageAge = freezed,
    Object? participants = freezed,
    Object? loc = freezed,
    Object? typeOfCode = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_CodingEventDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      averageAge: averageAge == freezed
          ? _value.averageAge
          : averageAge // ignore: cast_nullable_to_non_nullable
              as int?,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
      loc: loc == freezed
          ? _value.loc
          : loc // ignore: cast_nullable_to_non_nullable
              as int?,
      typeOfCode: typeOfCode == freezed
          ? _value.typeOfCode
          : typeOfCode // ignore: cast_nullable_to_non_nullable
              as TypeOfCode?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CodingEventDTO implements _CodingEventDTO {
  const _$_CodingEventDTO(
      {required this.id,
      required this.name,
      required this.status,
      @MyDateTimeConverter() this.startDate,
      @MyDateTimeConverter() this.endDate,
      this.averageAge,
      this.participants,
      this.loc,
      @TypeOfCodeConverter() this.typeOfCode,
      @GeoPointConverter() required this.location});

  factory _$_CodingEventDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CodingEventDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String status;
  @override
  @MyDateTimeConverter()
  final DateTime? startDate;
  @override
  @MyDateTimeConverter()
  final DateTime? endDate;
  @override
  final int? averageAge;
  @override
  final int? participants;
  @override
  final int? loc;
  @override
  @TypeOfCodeConverter()
  final TypeOfCode? typeOfCode;
  @override
  @GeoPointConverter()
  final GeoPoint location;

  @override
  String toString() {
    return 'CodingEventDTO(id: $id, name: $name, status: $status, startDate: $startDate, endDate: $endDate, averageAge: $averageAge, participants: $participants, loc: $loc, typeOfCode: $typeOfCode, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CodingEventDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.averageAge, averageAge) &&
            const DeepCollectionEquality()
                .equals(other.participants, participants) &&
            const DeepCollectionEquality().equals(other.loc, loc) &&
            const DeepCollectionEquality()
                .equals(other.typeOfCode, typeOfCode) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(averageAge),
      const DeepCollectionEquality().hash(participants),
      const DeepCollectionEquality().hash(loc),
      const DeepCollectionEquality().hash(typeOfCode),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$$_CodingEventDTOCopyWith<_$_CodingEventDTO> get copyWith =>
      __$$_CodingEventDTOCopyWithImpl<_$_CodingEventDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CodingEventDTOToJson(
      this,
    );
  }
}

abstract class _CodingEventDTO implements CodingEventDTO {
  const factory _CodingEventDTO(
          {required final String id,
          required final String name,
          required final String status,
          @MyDateTimeConverter() final DateTime? startDate,
          @MyDateTimeConverter() final DateTime? endDate,
          final int? averageAge,
          final int? participants,
          final int? loc,
          @TypeOfCodeConverter() final TypeOfCode? typeOfCode,
          @GeoPointConverter() required final GeoPoint location}) =
      _$_CodingEventDTO;

  factory _CodingEventDTO.fromJson(Map<String, dynamic> json) =
      _$_CodingEventDTO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get status;
  @override
  @MyDateTimeConverter()
  DateTime? get startDate;
  @override
  @MyDateTimeConverter()
  DateTime? get endDate;
  @override
  int? get averageAge;
  @override
  int? get participants;
  @override
  int? get loc;
  @override
  @TypeOfCodeConverter()
  TypeOfCode? get typeOfCode;
  @override
  @GeoPointConverter()
  GeoPoint get location;
  @override
  @JsonKey(ignore: true)
  _$$_CodingEventDTOCopyWith<_$_CodingEventDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
