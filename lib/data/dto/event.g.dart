// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventDTO _$$_EventDTOFromJson(Map<String, dynamic> json) => _$_EventDTO(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EventDTOToJson(_$_EventDTO instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      title: json['title'] as String,
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      picture: json['picture'] as String,
      path: json['path'] as String,
      geoposition: json['geoposition'] as String,
      location: json['location'] as String,
      activityType: json['activityType'] as String,
      organizer: json['organizer'] as String,
      organizerType: json['organizerType'] as String,
      eventUrl: json['eventUrl'] as String,
      contactPerson: json['contactPerson'],
      importedFromGermanFeeds: json['importedFromGermanFeeds'] as bool,
      codeweekForAllParticipationCode:
          json['codeweekForAllParticipationCode'] as String,
      themes: (json['themes'] as List<dynamic>)
          .map((e) => Audience.fromJson(e as Map<String, dynamic>))
          .toList(),
      audiences: (json['audiences'] as List<dynamic>)
          .map((e) => Audience.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Audience.fromJson(e as Map<String, dynamic>))
          .toList(),
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'picture': instance.picture,
      'path': instance.path,
      'geoposition': instance.geoposition,
      'location': instance.location,
      'activityType': instance.activityType,
      'organizer': instance.organizer,
      'organizerType': instance.organizerType,
      'eventUrl': instance.eventUrl,
      'contactPerson': instance.contactPerson,
      'importedFromGermanFeeds': instance.importedFromGermanFeeds,
      'codeweekForAllParticipationCode':
          instance.codeweekForAllParticipationCode,
      'themes': instance.themes,
      'audiences': instance.audiences,
      'tags': instance.tags,
      'owner': instance.owner,
    };

_$_Audience _$$_AudienceFromJson(Map<String, dynamic> json) => _$_Audience(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_AudienceToJson(_$_Audience instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Owner _$$_OwnerFromJson(Map<String, dynamic> json) => _$_Owner(
      id: json['id'] as int,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_OwnerToJson(_$_Owner instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
    };
