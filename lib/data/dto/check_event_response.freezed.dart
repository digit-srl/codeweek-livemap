// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_event_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckUrlResponse _$CheckUrlResponseFromJson(Map<String, dynamic> json) {
  return _CheckUrlResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckUrlResponse {
  String get status => throw _privateConstructorUsedError;
  CodingEventDTO? get event => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckUrlResponseCopyWith<CheckUrlResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckUrlResponseCopyWith<$Res> {
  factory $CheckUrlResponseCopyWith(
          CheckUrlResponse value, $Res Function(CheckUrlResponse) then) =
      _$CheckUrlResponseCopyWithImpl<$Res>;
  $Res call({String status, CodingEventDTO? event});

  $CodingEventDTOCopyWith<$Res>? get event;
}

/// @nodoc
class _$CheckUrlResponseCopyWithImpl<$Res>
    implements $CheckUrlResponseCopyWith<$Res> {
  _$CheckUrlResponseCopyWithImpl(this._value, this._then);

  final CheckUrlResponse _value;
  // ignore: unused_field
  final $Res Function(CheckUrlResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as CodingEventDTO?,
    ));
  }

  @override
  $CodingEventDTOCopyWith<$Res>? get event {
    if (_value.event == null) {
      return null;
    }

    return $CodingEventDTOCopyWith<$Res>(_value.event!, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
abstract class _$$_CheckUrlResponseCopyWith<$Res>
    implements $CheckUrlResponseCopyWith<$Res> {
  factory _$$_CheckUrlResponseCopyWith(
          _$_CheckUrlResponse value, $Res Function(_$_CheckUrlResponse) then) =
      __$$_CheckUrlResponseCopyWithImpl<$Res>;
  @override
  $Res call({String status, CodingEventDTO? event});

  @override
  $CodingEventDTOCopyWith<$Res>? get event;
}

/// @nodoc
class __$$_CheckUrlResponseCopyWithImpl<$Res>
    extends _$CheckUrlResponseCopyWithImpl<$Res>
    implements _$$_CheckUrlResponseCopyWith<$Res> {
  __$$_CheckUrlResponseCopyWithImpl(
      _$_CheckUrlResponse _value, $Res Function(_$_CheckUrlResponse) _then)
      : super(_value, (v) => _then(v as _$_CheckUrlResponse));

  @override
  _$_CheckUrlResponse get _value => super._value as _$_CheckUrlResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? event = freezed,
  }) {
    return _then(_$_CheckUrlResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as CodingEventDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckUrlResponse implements _CheckUrlResponse {
  const _$_CheckUrlResponse({required this.status, this.event});

  factory _$_CheckUrlResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CheckUrlResponseFromJson(json);

  @override
  final String status;
  @override
  final CodingEventDTO? event;

  @override
  String toString() {
    return 'CheckUrlResponse(status: $status, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckUrlResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$$_CheckUrlResponseCopyWith<_$_CheckUrlResponse> get copyWith =>
      __$$_CheckUrlResponseCopyWithImpl<_$_CheckUrlResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckUrlResponseToJson(
      this,
    );
  }
}

abstract class _CheckUrlResponse implements CheckUrlResponse {
  const factory _CheckUrlResponse(
      {required final String status,
      final CodingEventDTO? event}) = _$_CheckUrlResponse;

  factory _CheckUrlResponse.fromJson(Map<String, dynamic> json) =
      _$_CheckUrlResponse.fromJson;

  @override
  String get status;
  @override
  CodingEventDTO? get event;
  @override
  @JsonKey(ignore: true)
  _$$_CheckUrlResponseCopyWith<_$_CheckUrlResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
