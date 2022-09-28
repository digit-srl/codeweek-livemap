// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_event_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckUrlResponse _$$_CheckUrlResponseFromJson(Map<String, dynamic> json) =>
    _$_CheckUrlResponse(
      status: json['status'] as String,
      event: json['event'] == null
          ? null
          : CodingEventDTO.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CheckUrlResponseToJson(_$_CheckUrlResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'event': instance.event,
    };
