// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coding_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CodingEventDTO _$$_CodingEventDTOFromJson(Map<String, dynamic> json) =>
    _$_CodingEventDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      status: json['status'] as String,
      startDate: _$JsonConverterFromJson<String, DateTime>(
          json['startDate'], const MyDateTimeConverter().fromJson),
      endDate: _$JsonConverterFromJson<String, DateTime>(
          json['endDate'], const MyDateTimeConverter().fromJson),
      averageAge: json['averageAge'] as int?,
      participants: json['participants'] as int?,
      loc: json['loc'] as int?,
      typeOfCode: _$JsonConverterFromJson<String, TypeOfCode>(
          json['typeOfCode'], const TypeOfCodeConverter().fromJson),
      location: const GeoPointConverter().fromJson(json['location']),
    );

Map<String, dynamic> _$$_CodingEventDTOToJson(_$_CodingEventDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'startDate': _$JsonConverterToJson<String, DateTime>(
          instance.startDate, const MyDateTimeConverter().toJson),
      'endDate': _$JsonConverterToJson<String, DateTime>(
          instance.endDate, const MyDateTimeConverter().toJson),
      'averageAge': instance.averageAge,
      'participants': instance.participants,
      'loc': instance.loc,
      'typeOfCode': _$JsonConverterToJson<String, TypeOfCode>(
          instance.typeOfCode, const TypeOfCodeConverter().toJson),
      'location': const GeoPointConverter().toJson(instance.location),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
