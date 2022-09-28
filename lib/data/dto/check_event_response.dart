
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cw_live_map/data/dto/coding_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_event_response.freezed.dart';
part 'check_event_response.g.dart';

@freezed
class CheckUrlResponse with _$CheckUrlResponse {
  const factory CheckUrlResponse({
    required String status,
    CodingEventDTO? event,
  }) = _CheckUrlResponse;

  factory CheckUrlResponse.fromJson(Map<String, Object?> json) =>
      _$CheckUrlResponseFromJson(json);
}