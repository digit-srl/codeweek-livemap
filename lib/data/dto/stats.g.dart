// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatsDTO _$$_StatsDTOFromJson(Map<String, dynamic> json) => _$_StatsDTO(
      liveEventsCount: json['liveEventsCount'] as int,
      loc: json['loc'] as int,
      participants: json['participants'] as int,
    );

Map<String, dynamic> _$$_StatsDTOToJson(_$_StatsDTO instance) =>
    <String, dynamic>{
      'liveEventsCount': instance.liveEventsCount,
      'loc': instance.loc,
      'participants': instance.participants,
    };
