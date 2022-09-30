import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';
part 'stats.g.dart';

@freezed
class StatsDTO with _$StatsDTO {
  const factory StatsDTO({
    required int liveEventsCount,
    required int loc,
    required int participants,
  }) = _StatsDTO;

  factory StatsDTO.fromJson(Map<String, Object?> json) =>
      _$StatsDTOFromJson(json);
}