// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDTO _$EventDTOFromJson(Map<String, dynamic> json) {
  return _EventDTO.fromJson(json);
}

/// @nodoc
mixin _$EventDTO {
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDTOCopyWith<EventDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDTOCopyWith<$Res> {
  factory $EventDTOCopyWith(EventDTO value, $Res Function(EventDTO) then) =
      _$EventDTOCopyWithImpl<$Res>;
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$EventDTOCopyWithImpl<$Res> implements $EventDTOCopyWith<$Res> {
  _$EventDTOCopyWithImpl(this._value, this._then);

  final EventDTO _value;
  // ignore: unused_field
  final $Res Function(EventDTO) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }

  @override
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_EventDTOCopyWith<$Res> implements $EventDTOCopyWith<$Res> {
  factory _$$_EventDTOCopyWith(
          _$_EventDTO value, $Res Function(_$_EventDTO) then) =
      __$$_EventDTOCopyWithImpl<$Res>;
  @override
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_EventDTOCopyWithImpl<$Res> extends _$EventDTOCopyWithImpl<$Res>
    implements _$$_EventDTOCopyWith<$Res> {
  __$$_EventDTOCopyWithImpl(
      _$_EventDTO _value, $Res Function(_$_EventDTO) _then)
      : super(_value, (v) => _then(v as _$_EventDTO));

  @override
  _$_EventDTO get _value => super._value as _$_EventDTO;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_EventDTO(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventDTO implements _EventDTO {
  const _$_EventDTO({required this.data});

  factory _$_EventDTO.fromJson(Map<String, dynamic> json) =>
      _$$_EventDTOFromJson(json);

  @override
  final Data data;

  @override
  String toString() {
    return 'EventDTO(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDTO &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_EventDTOCopyWith<_$_EventDTO> get copyWith =>
      __$$_EventDTOCopyWithImpl<_$_EventDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDTOToJson(
      this,
    );
  }
}

abstract class _EventDTO implements EventDTO {
  const factory _EventDTO({required final Data data}) = _$_EventDTO;

  factory _EventDTO.fromJson(Map<String, dynamic> json) = _$_EventDTO.fromJson;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_EventDTOCopyWith<_$_EventDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get geoposition => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get activityType => throw _privateConstructorUsedError;
  String get organizer => throw _privateConstructorUsedError;
  String get organizerType => throw _privateConstructorUsedError;
  String get eventUrl => throw _privateConstructorUsedError;
  dynamic get contactPerson => throw _privateConstructorUsedError;
  bool get importedFromGermanFeeds => throw _privateConstructorUsedError;
  String get codeweekForAllParticipationCode =>
      throw _privateConstructorUsedError;
  List<Audience> get themes => throw _privateConstructorUsedError;
  List<Audience> get audiences => throw _privateConstructorUsedError;
  List<Audience> get tags => throw _privateConstructorUsedError;
  Owner get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      DateTime startDate,
      DateTime endDate,
      DateTime createdAt,
      DateTime updatedAt,
      String picture,
      String path,
      String geoposition,
      String location,
      String activityType,
      String organizer,
      String organizerType,
      String eventUrl,
      dynamic contactPerson,
      bool importedFromGermanFeeds,
      String codeweekForAllParticipationCode,
      List<Audience> themes,
      List<Audience> audiences,
      List<Audience> tags,
      Owner owner});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? picture = freezed,
    Object? path = freezed,
    Object? geoposition = freezed,
    Object? location = freezed,
    Object? activityType = freezed,
    Object? organizer = freezed,
    Object? organizerType = freezed,
    Object? eventUrl = freezed,
    Object? contactPerson = freezed,
    Object? importedFromGermanFeeds = freezed,
    Object? codeweekForAllParticipationCode = freezed,
    Object? themes = freezed,
    Object? audiences = freezed,
    Object? tags = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      geoposition: geoposition == freezed
          ? _value.geoposition
          : geoposition // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      activityType: activityType == freezed
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String,
      organizer: organizer == freezed
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as String,
      organizerType: organizerType == freezed
          ? _value.organizerType
          : organizerType // ignore: cast_nullable_to_non_nullable
              as String,
      eventUrl: eventUrl == freezed
          ? _value.eventUrl
          : eventUrl // ignore: cast_nullable_to_non_nullable
              as String,
      contactPerson: contactPerson == freezed
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as dynamic,
      importedFromGermanFeeds: importedFromGermanFeeds == freezed
          ? _value.importedFromGermanFeeds
          : importedFromGermanFeeds // ignore: cast_nullable_to_non_nullable
              as bool,
      codeweekForAllParticipationCode: codeweekForAllParticipationCode ==
              freezed
          ? _value.codeweekForAllParticipationCode
          : codeweekForAllParticipationCode // ignore: cast_nullable_to_non_nullable
              as String,
      themes: themes == freezed
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<Audience>,
      audiences: audiences == freezed
          ? _value.audiences
          : audiences // ignore: cast_nullable_to_non_nullable
              as List<Audience>,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Audience>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
    ));
  }

  @override
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      DateTime startDate,
      DateTime endDate,
      DateTime createdAt,
      DateTime updatedAt,
      String picture,
      String path,
      String geoposition,
      String location,
      String activityType,
      String organizer,
      String organizerType,
      String eventUrl,
      dynamic contactPerson,
      bool importedFromGermanFeeds,
      String codeweekForAllParticipationCode,
      List<Audience> themes,
      List<Audience> audiences,
      List<Audience> tags,
      Owner owner});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, (v) => _then(v as _$_Data));

  @override
  _$_Data get _value => super._value as _$_Data;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? picture = freezed,
    Object? path = freezed,
    Object? geoposition = freezed,
    Object? location = freezed,
    Object? activityType = freezed,
    Object? organizer = freezed,
    Object? organizerType = freezed,
    Object? eventUrl = freezed,
    Object? contactPerson = freezed,
    Object? importedFromGermanFeeds = freezed,
    Object? codeweekForAllParticipationCode = freezed,
    Object? themes = freezed,
    Object? audiences = freezed,
    Object? tags = freezed,
    Object? owner = freezed,
  }) {
    return _then(_$_Data(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      geoposition: geoposition == freezed
          ? _value.geoposition
          : geoposition // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      activityType: activityType == freezed
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String,
      organizer: organizer == freezed
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as String,
      organizerType: organizerType == freezed
          ? _value.organizerType
          : organizerType // ignore: cast_nullable_to_non_nullable
              as String,
      eventUrl: eventUrl == freezed
          ? _value.eventUrl
          : eventUrl // ignore: cast_nullable_to_non_nullable
              as String,
      contactPerson: contactPerson == freezed
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as dynamic,
      importedFromGermanFeeds: importedFromGermanFeeds == freezed
          ? _value.importedFromGermanFeeds
          : importedFromGermanFeeds // ignore: cast_nullable_to_non_nullable
              as bool,
      codeweekForAllParticipationCode: codeweekForAllParticipationCode ==
              freezed
          ? _value.codeweekForAllParticipationCode
          : codeweekForAllParticipationCode // ignore: cast_nullable_to_non_nullable
              as String,
      themes: themes == freezed
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<Audience>,
      audiences: audiences == freezed
          ? _value._audiences
          : audiences // ignore: cast_nullable_to_non_nullable
              as List<Audience>,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Audience>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required this.title,
      required this.description,
      required this.startDate,
      required this.endDate,
      required this.createdAt,
      required this.updatedAt,
      required this.picture,
      required this.path,
      required this.geoposition,
      required this.location,
      required this.activityType,
      required this.organizer,
      required this.organizerType,
      required this.eventUrl,
      required this.contactPerson,
      required this.importedFromGermanFeeds,
      required this.codeweekForAllParticipationCode,
      required final List<Audience> themes,
      required final List<Audience> audiences,
      required final List<Audience> tags,
      required this.owner})
      : _themes = themes,
        _audiences = audiences,
        _tags = tags;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String picture;
  @override
  final String path;
  @override
  final String geoposition;
  @override
  final String location;
  @override
  final String activityType;
  @override
  final String organizer;
  @override
  final String organizerType;
  @override
  final String eventUrl;
  @override
  final dynamic contactPerson;
  @override
  final bool importedFromGermanFeeds;
  @override
  final String codeweekForAllParticipationCode;
  final List<Audience> _themes;
  @override
  List<Audience> get themes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themes);
  }

  final List<Audience> _audiences;
  @override
  List<Audience> get audiences {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audiences);
  }

  final List<Audience> _tags;
  @override
  List<Audience> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final Owner owner;

  @override
  String toString() {
    return 'Data(title: $title, description: $description, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt, picture: $picture, path: $path, geoposition: $geoposition, location: $location, activityType: $activityType, organizer: $organizer, organizerType: $organizerType, eventUrl: $eventUrl, contactPerson: $contactPerson, importedFromGermanFeeds: $importedFromGermanFeeds, codeweekForAllParticipationCode: $codeweekForAllParticipationCode, themes: $themes, audiences: $audiences, tags: $tags, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.geoposition, geoposition) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.activityType, activityType) &&
            const DeepCollectionEquality().equals(other.organizer, organizer) &&
            const DeepCollectionEquality()
                .equals(other.organizerType, organizerType) &&
            const DeepCollectionEquality().equals(other.eventUrl, eventUrl) &&
            const DeepCollectionEquality()
                .equals(other.contactPerson, contactPerson) &&
            const DeepCollectionEquality().equals(
                other.importedFromGermanFeeds, importedFromGermanFeeds) &&
            const DeepCollectionEquality().equals(
                other.codeweekForAllParticipationCode,
                codeweekForAllParticipationCode) &&
            const DeepCollectionEquality().equals(other._themes, _themes) &&
            const DeepCollectionEquality()
                .equals(other._audiences, _audiences) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.owner, owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(endDate),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(picture),
        const DeepCollectionEquality().hash(path),
        const DeepCollectionEquality().hash(geoposition),
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(activityType),
        const DeepCollectionEquality().hash(organizer),
        const DeepCollectionEquality().hash(organizerType),
        const DeepCollectionEquality().hash(eventUrl),
        const DeepCollectionEquality().hash(contactPerson),
        const DeepCollectionEquality().hash(importedFromGermanFeeds),
        const DeepCollectionEquality().hash(codeweekForAllParticipationCode),
        const DeepCollectionEquality().hash(_themes),
        const DeepCollectionEquality().hash(_audiences),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(owner)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final String title,
      required final String description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String picture,
      required final String path,
      required final String geoposition,
      required final String location,
      required final String activityType,
      required final String organizer,
      required final String organizerType,
      required final String eventUrl,
      required final dynamic contactPerson,
      required final bool importedFromGermanFeeds,
      required final String codeweekForAllParticipationCode,
      required final List<Audience> themes,
      required final List<Audience> audiences,
      required final List<Audience> tags,
      required final Owner owner}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get picture;
  @override
  String get path;
  @override
  String get geoposition;
  @override
  String get location;
  @override
  String get activityType;
  @override
  String get organizer;
  @override
  String get organizerType;
  @override
  String get eventUrl;
  @override
  dynamic get contactPerson;
  @override
  bool get importedFromGermanFeeds;
  @override
  String get codeweekForAllParticipationCode;
  @override
  List<Audience> get themes;
  @override
  List<Audience> get audiences;
  @override
  List<Audience> get tags;
  @override
  Owner get owner;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Audience _$AudienceFromJson(Map<String, dynamic> json) {
  return _Audience.fromJson(json);
}

/// @nodoc
mixin _$Audience {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudienceCopyWith<Audience> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudienceCopyWith<$Res> {
  factory $AudienceCopyWith(Audience value, $Res Function(Audience) then) =
      _$AudienceCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$AudienceCopyWithImpl<$Res> implements $AudienceCopyWith<$Res> {
  _$AudienceCopyWithImpl(this._value, this._then);

  final Audience _value;
  // ignore: unused_field
  final $Res Function(Audience) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_AudienceCopyWith<$Res> implements $AudienceCopyWith<$Res> {
  factory _$$_AudienceCopyWith(
          _$_Audience value, $Res Function(_$_Audience) then) =
      __$$_AudienceCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_AudienceCopyWithImpl<$Res> extends _$AudienceCopyWithImpl<$Res>
    implements _$$_AudienceCopyWith<$Res> {
  __$$_AudienceCopyWithImpl(
      _$_Audience _value, $Res Function(_$_Audience) _then)
      : super(_value, (v) => _then(v as _$_Audience));

  @override
  _$_Audience get _value => super._value as _$_Audience;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Audience(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Audience implements _Audience {
  const _$_Audience({required this.id, required this.name});

  factory _$_Audience.fromJson(Map<String, dynamic> json) =>
      _$$_AudienceFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Audience(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Audience &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_AudienceCopyWith<_$_Audience> get copyWith =>
      __$$_AudienceCopyWithImpl<_$_Audience>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AudienceToJson(
      this,
    );
  }
}

abstract class _Audience implements Audience {
  const factory _Audience({required final int id, required final String name}) =
      _$_Audience;

  factory _Audience.fromJson(Map<String, dynamic> json) = _$_Audience.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AudienceCopyWith<_$_Audience> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res>;
  $Res call({int id, String email});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res> implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  final Owner _value;
  // ignore: unused_field
  final $Res Function(Owner) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$_OwnerCopyWith(_$_Owner value, $Res Function(_$_Owner) then) =
      __$$_OwnerCopyWithImpl<$Res>;
  @override
  $Res call({int id, String email});
}

/// @nodoc
class __$$_OwnerCopyWithImpl<$Res> extends _$OwnerCopyWithImpl<$Res>
    implements _$$_OwnerCopyWith<$Res> {
  __$$_OwnerCopyWithImpl(_$_Owner _value, $Res Function(_$_Owner) _then)
      : super(_value, (v) => _then(v as _$_Owner));

  @override
  _$_Owner get _value => super._value as _$_Owner;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_Owner(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Owner implements _Owner {
  const _$_Owner({required this.id, required this.email});

  factory _$_Owner.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerFromJson(json);

  @override
  final int id;
  @override
  final String email;

  @override
  String toString() {
    return 'Owner(id: $id, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Owner &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
      __$$_OwnerCopyWithImpl<_$_Owner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner({required final int id, required final String email}) =
      _$_Owner;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$_Owner.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
      throw _privateConstructorUsedError;
}
