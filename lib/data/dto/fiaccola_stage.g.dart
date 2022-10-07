// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fiaccola_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FiaccolaStage _$$_FiaccolaStageFromJson(Map<String, dynamic> json) =>
    _$_FiaccolaStage(
      id: json['id'] as String,
      region: json['region'] as String,
      label: json['label'] as String,
      startTime:
          const MyTimestampConverter().fromJson(json['startTime'] as Timestamp),
      endTime:
          const MyTimestampConverter().fromJson(json['endTime'] as Timestamp),
      location: const GeoPointConverter().fromJson(json['location']),
    );

Map<String, dynamic> _$$_FiaccolaStageToJson(_$_FiaccolaStage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'region': instance.region,
      'label': instance.label,
      'startTime': const MyTimestampConverter().toJson(instance.startTime),
      'endTime': const MyTimestampConverter().toJson(instance.endTime),
      'location': const GeoPointConverter().toJson(instance.location),
    };
