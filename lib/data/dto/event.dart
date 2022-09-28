import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class EventDTO with _$EventDTO {
  const factory EventDTO({
    required Data data,
  }) = _EventDTO;

  factory EventDTO.fromJson(Map<String, dynamic> json) => _$EventDTOFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String title,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String picture,
    required String path,
    required String geoposition,
    required String location,
    required String activityType,
    required String organizer,
    required String organizerType,
    required String eventUrl,
    required dynamic contactPerson,
    required bool importedFromGermanFeeds,
    required String codeweekForAllParticipationCode,
    required List<Audience> themes,
    required List<Audience> audiences,
    required List<Audience> tags,
    required Owner owner,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Audience with _$Audience {
  const factory Audience({
    required int id,
    required String name,
  }) = _Audience;

  factory Audience.fromJson(Map<String, dynamic> json) => _$AudienceFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    required int id,
    required String email,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
