import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cw_live_map/ui/screens/add_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coding_event.freezed.dart';

part 'coding_event.g.dart';

@freezed
class CodingEventDTO with _$CodingEventDTO {
  const factory CodingEventDTO({
    required String id,
    required String name,
    required String status,
    int? averageAge,
    int? participants,
    int? loc,
    @TypeOfCodeConverter() TypeOfCode? typeOfCode,
    @GeoPointConverter() required GeoPoint location,
    // int? lineOfCode,
  }) = _CodingEventDTO;

  factory CodingEventDTO.fromJson(Map<String, Object?> json) =>
      _$CodingEventDTOFromJson(json);
}

class GeoPointConverter implements JsonConverter<GeoPoint, dynamic> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(dynamic geo) {
    if (geo is GeoPoint) {
      return geo;
    } else {
      final location = Map<String, dynamic>.from(geo);
      return GeoPoint(location['_latitude'], location['_longitude']);
    }
  }

  @override
  GeoPoint toJson(GeoPoint data) => data;
}

class TypeOfCodeConverter implements JsonConverter<TypeOfCode, String> {
  const TypeOfCodeConverter();

  @override
  TypeOfCode fromJson(String data) {
    return enumFromString(data, TypeOfCode.values);
  }

  @override
  String toJson(TypeOfCode data) => enumToString(data) ?? 'text';
}

String? enumToString(Object? o) => o?.toString().split('.').last;

T enumFromString<T extends Object>(String key, List<T> values) => values
    .firstWhere((v) => key.toLowerCase() == enumToString(v)?.toLowerCase());
