// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_event_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, double latitude,
            double longitude, bool canStart, String? message)
        eventVerified,
    required TResult Function(CodingEventDTO event) eventOnline,
    required TResult Function() initial,
    required TResult Function() oldEvent,
    required TResult Function(String eventId, OtpMode mode, String? error)
        waitingOtpCode,
    required TResult Function(String eventId) creationSuccessful,
    required TResult Function(String eventId) closeEventForm,
    required TResult Function() terminationSuccessful,
    required TResult Function() loading,
    required TResult Function(String message, Object? error, StackTrace? st)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEventVerified value) eventVerified,
    required TResult Function(EventOnline value) eventOnline,
    required TResult Function(AddEventInitial value) initial,
    required TResult Function(OldEvent value) oldEvent,
    required TResult Function(WaitingOtpCode value) waitingOtpCode,
    required TResult Function(EventCreationSuccessful value) creationSuccessful,
    required TResult Function(CloseEventForm value) closeEventForm,
    required TResult Function(EventTerminationSuccessful value)
        terminationSuccessful,
    required TResult Function(AddEventLoading value) loading,
    required TResult Function(AddEventError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEventStateCopyWith<$Res> {
  factory $AddEventStateCopyWith(
          AddEventState value, $Res Function(AddEventState) then) =
      _$AddEventStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddEventStateCopyWithImpl<$Res>
    implements $AddEventStateCopyWith<$Res> {
  _$AddEventStateCopyWithImpl(this._value, this._then);

  final AddEventState _value;
  // ignore: unused_field
  final $Res Function(AddEventState) _then;
}

/// @nodoc
abstract class _$$AddEventVerifiedCopyWith<$Res> {
  factory _$$AddEventVerifiedCopyWith(
          _$AddEventVerified value, $Res Function(_$AddEventVerified) then) =
      __$$AddEventVerifiedCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      double latitude,
      double longitude,
      bool canStart,
      String? message});
}

/// @nodoc
class __$$AddEventVerifiedCopyWithImpl<$Res>
    extends _$AddEventStateCopyWithImpl<$Res>
    implements _$$AddEventVerifiedCopyWith<$Res> {
  __$$AddEventVerifiedCopyWithImpl(
      _$AddEventVerified _value, $Res Function(_$AddEventVerified) _then)
      : super(_value, (v) => _then(v as _$AddEventVerified));

  @override
  _$AddEventVerified get _value => super._value as _$AddEventVerified;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? canStart = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AddEventVerified(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      canStart: canStart == freezed
          ? _value.canStart
          : canStart // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddEventVerified implements AddEventVerified {
  const _$AddEventVerified(
      {required this.id,
      required this.name,
      required this.latitude,
      required this.longitude,
      required this.canStart,
      this.message});

  @override
  final String id;
  @override
  final String name;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final bool canStart;
  @override
  final String? message;

  @override
  String toString() {
    return 'AddEventState.eventVerified(id: $id, name: $name, latitude: $latitude, longitude: $longitude, canStart: $canStart, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEventVerified &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.canStart, canStart) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(canStart),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$AddEventVerifiedCopyWith<_$AddEventVerified> get copyWith =>
      __$$AddEventVerifiedCopyWithImpl<_$AddEventVerified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, double latitude,
            double longitude, bool canStart, String? message)
        eventVerified,
    required TResult Function(CodingEventDTO event) eventOnline,
    required TResult Function() initial,
    required TResult Function() oldEvent,
    required TResult Function(String eventId, OtpMode mode, String? error)
        waitingOtpCode,
    required TResult Function(String eventId) creationSuccessful,
    required TResult Function(String eventId) closeEventForm,
    required TResult Function() terminationSuccessful,
    required TResult Function() loading,
    required TResult Function(String message, Object? error, StackTrace? st)
        error,
  }) {
    return eventVerified(id, name, latitude, longitude, canStart, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
  }) {
    return eventVerified?.call(
        id, name, latitude, longitude, canStart, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
    required TResult orElse(),
  }) {
    if (eventVerified != null) {
      return eventVerified(id, name, latitude, longitude, canStart, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEventVerified value) eventVerified,
    required TResult Function(EventOnline value) eventOnline,
    required TResult Function(AddEventInitial value) initial,
    required TResult Function(OldEvent value) oldEvent,
    required TResult Function(WaitingOtpCode value) waitingOtpCode,
    required TResult Function(EventCreationSuccessful value) creationSuccessful,
    required TResult Function(CloseEventForm value) closeEventForm,
    required TResult Function(EventTerminationSuccessful value)
        terminationSuccessful,
    required TResult Function(AddEventLoading value) loading,
    required TResult Function(AddEventError value) error,
  }) {
    return eventVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
  }) {
    return eventVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
    required TResult orElse(),
  }) {
    if (eventVerified != null) {
      return eventVerified(this);
    }
    return orElse();
  }
}

abstract class AddEventVerified implements AddEventState {
  const factory AddEventVerified(
      {required final String id,
      required final String name,
      required final double latitude,
      required final double longitude,
      required final bool canStart,
      final String? message}) = _$AddEventVerified;

  String get id;
  String get name;
  double get latitude;
  double get longitude;
  bool get canStart;
  String? get message;
  @JsonKey(ignore: true)
  _$$AddEventVerifiedCopyWith<_$AddEventVerified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventOnlineCopyWith<$Res> {
  factory _$$EventOnlineCopyWith(
          _$EventOnline value, $Res Function(_$EventOnline) then) =
      __$$EventOnlineCopyWithImpl<$Res>;
  $Res call({CodingEventDTO event});

  $CodingEventDTOCopyWith<$Res> get event;
}

/// @nodoc
class __$$EventOnlineCopyWithImpl<$Res>
    extends _$AddEventStateCopyWithImpl<$Res>
    implements _$$EventOnlineCopyWith<$Res> {
  __$$EventOnlineCopyWithImpl(
      _$EventOnline _value, $Res Function(_$EventOnline) _then)
      : super(_value, (v) => _then(v as _$EventOnline));

  @override
  _$EventOnline get _value => super._value as _$EventOnline;

  @override
  $Res call({
    Object? event = freezed,
  }) {
    return _then(_$EventOnline(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as CodingEventDTO,
    ));
  }

  @override
  $CodingEventDTOCopyWith<$Res> get event {
    return $CodingEventDTOCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$EventOnline implements EventOnline {
  const _$EventOnline({required this.event});

  @override
  final CodingEventDTO event;

  @override
  String toString() {
    return 'AddEventState.eventOnline(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventOnline &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$$EventOnlineCopyWith<_$EventOnline> get copyWith =>
      __$$EventOnlineCopyWithImpl<_$EventOnline>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, double latitude,
            double longitude, bool canStart, String? message)
        eventVerified,
    required TResult Function(CodingEventDTO event) eventOnline,
    required TResult Function() initial,
    required TResult Function() oldEvent,
    required TResult Function(String eventId, OtpMode mode, String? error)
        waitingOtpCode,
    required TResult Function(String eventId) creationSuccessful,
    required TResult Function(String eventId) closeEventForm,
    required TResult Function() terminationSuccessful,
    required TResult Function() loading,
    required TResult Function(String message, Object? error, StackTrace? st)
        error,
  }) {
    return eventOnline(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
  }) {
    return eventOnline?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
    required TResult orElse(),
  }) {
    if (eventOnline != null) {
      return eventOnline(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEventVerified value) eventVerified,
    required TResult Function(EventOnline value) eventOnline,
    required TResult Function(AddEventInitial value) initial,
    required TResult Function(OldEvent value) oldEvent,
    required TResult Function(WaitingOtpCode value) waitingOtpCode,
    required TResult Function(EventCreationSuccessful value) creationSuccessful,
    required TResult Function(CloseEventForm value) closeEventForm,
    required TResult Function(EventTerminationSuccessful value)
        terminationSuccessful,
    required TResult Function(AddEventLoading value) loading,
    required TResult Function(AddEventError value) error,
  }) {
    return eventOnline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
  }) {
    return eventOnline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
    required TResult orElse(),
  }) {
    if (eventOnline != null) {
      return eventOnline(this);
    }
    return orElse();
  }
}

abstract class EventOnline implements AddEventState {
  const factory EventOnline({required final CodingEventDTO event}) =
      _$EventOnline;

  CodingEventDTO get event;
  @JsonKey(ignore: true)
  _$$EventOnlineCopyWith<_$EventOnline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddEventInitialCopyWith<$Res> {
  factory _$$AddEventInitialCopyWith(
          _$AddEventInitial value, $Res Function(_$AddEventInitial) then) =
      __$$AddEventInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddEventInitialCopyWithImpl<$Res>
    extends _$AddEventStateCopyWithImpl<$Res>
    implements _$$AddEventInitialCopyWith<$Res> {
  __$$AddEventInitialCopyWithImpl(
      _$AddEventInitial _value, $Res Function(_$AddEventInitial) _then)
      : super(_value, (v) => _then(v as _$AddEventInitial));

  @override
  _$AddEventInitial get _value => super._value as _$AddEventInitial;
}

/// @nodoc

class _$AddEventInitial implements AddEventInitial {
  const _$AddEventInitial();

  @override
  String toString() {
    return 'AddEventState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, double latitude,
            double longitude, bool canStart, String? message)
        eventVerified,
    required TResult Function(CodingEventDTO event) eventOnline,
    required TResult Function() initial,
    required TResult Function() oldEvent,
    required TResult Function(String eventId, OtpMode mode, String? error)
        waitingOtpCode,
    required TResult Function(String eventId) creationSuccessful,
    required TResult Function(String eventId) closeEventForm,
    required TResult Function() terminationSuccessful,
    required TResult Function() loading,
    required TResult Function(String message, Object? error, StackTrace? st)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEventVerified value) eventVerified,
    required TResult Function(EventOnline value) eventOnline,
    required TResult Function(AddEventInitial value) initial,
    required TResult Function(OldEvent value) oldEvent,
    required TResult Function(WaitingOtpCode value) waitingOtpCode,
    required TResult Function(EventCreationSuccessful value) creationSuccessful,
    required TResult Function(CloseEventForm value) closeEventForm,
    required TResult Function(EventTerminationSuccessful value)
        terminationSuccessful,
    required TResult Function(AddEventLoading value) loading,
    required TResult Function(AddEventError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AddEventInitial implements AddEventState {
  const factory AddEventInitial() = _$AddEventInitial;
}

/// @nodoc
abstract class _$$OldEventCopyWith<$Res> {
  factory _$$OldEventCopyWith(
          _$OldEvent value, $Res Function(_$OldEvent) then) =
      __$$OldEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OldEventCopyWithImpl<$Res> extends _$AddEventStateCopyWithImpl<$Res>
    implements _$$OldEventCopyWith<$Res> {
  __$$OldEventCopyWithImpl(_$OldEvent _value, $Res Function(_$OldEvent) _then)
      : super(_value, (v) => _then(v as _$OldEvent));

  @override
  _$OldEvent get _value => super._value as _$OldEvent;
}

/// @nodoc

class _$OldEvent implements OldEvent {
  const _$OldEvent();

  @override
  String toString() {
    return 'AddEventState.oldEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OldEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, double latitude,
            double longitude, bool canStart, String? message)
        eventVerified,
    required TResult Function(CodingEventDTO event) eventOnline,
    required TResult Function() initial,
    required TResult Function() oldEvent,
    required TResult Function(String eventId, OtpMode mode, String? error)
        waitingOtpCode,
    required TResult Function(String eventId) creationSuccessful,
    required TResult Function(String eventId) closeEventForm,
    required TResult Function() terminationSuccessful,
    required TResult Function() loading,
    required TResult Function(String message, Object? error, StackTrace? st)
        error,
  }) {
    return oldEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
  }) {
    return oldEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
    required TResult orElse(),
  }) {
    if (oldEvent != null) {
      return oldEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEventVerified value) eventVerified,
    required TResult Function(EventOnline value) eventOnline,
    required TResult Function(AddEventInitial value) initial,
    required TResult Function(OldEvent value) oldEvent,
    required TResult Function(WaitingOtpCode value) waitingOtpCode,
    required TResult Function(EventCreationSuccessful value) creationSuccessful,
    required TResult Function(CloseEventForm value) closeEventForm,
    required TResult Function(EventTerminationSuccessful value)
        terminationSuccessful,
    required TResult Function(AddEventLoading value) loading,
    required TResult Function(AddEventError value) error,
  }) {
    return oldEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
  }) {
    return oldEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
    required TResult orElse(),
  }) {
    if (oldEvent != null) {
      return oldEvent(this);
    }
    return orElse();
  }
}

abstract class OldEvent implements AddEventState {
  const factory OldEvent() = _$OldEvent;
}

/// @nodoc
abstract class _$$WaitingOtpCodeCopyWith<$Res> {
  factory _$$WaitingOtpCodeCopyWith(
          _$WaitingOtpCode value, $Res Function(_$WaitingOtpCode) then) =
      __$$WaitingOtpCodeCopyWithImpl<$Res>;
  $Res call({String eventId, OtpMode mode, String? error});
}

/// @nodoc
class __$$WaitingOtpCodeCopyWithImpl<$Res>
    extends _$AddEventStateCopyWithImpl<$Res>
    implements _$$WaitingOtpCodeCopyWith<$Res> {
  __$$WaitingOtpCodeCopyWithImpl(
      _$WaitingOtpCode _value, $Res Function(_$WaitingOtpCode) _then)
      : super(_value, (v) => _then(v as _$WaitingOtpCode));

  @override
  _$WaitingOtpCode get _value => super._value as _$WaitingOtpCode;

  @override
  $Res call({
    Object? eventId = freezed,
    Object? mode = freezed,
    Object? error = freezed,
  }) {
    return _then(_$WaitingOtpCode(
      eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as OtpMode,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WaitingOtpCode implements WaitingOtpCode {
  const _$WaitingOtpCode(this.eventId, this.mode, {this.error});

  @override
  final String eventId;
  @override
  final OtpMode mode;
  @override
  final String? error;

  @override
  String toString() {
    return 'AddEventState.waitingOtpCode(eventId: $eventId, mode: $mode, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitingOtpCode &&
            const DeepCollectionEquality().equals(other.eventId, eventId) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(eventId),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$WaitingOtpCodeCopyWith<_$WaitingOtpCode> get copyWith =>
      __$$WaitingOtpCodeCopyWithImpl<_$WaitingOtpCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, double latitude,
            double longitude, bool canStart, String? message)
        eventVerified,
    required TResult Function(CodingEventDTO event) eventOnline,
    required TResult Function() initial,
    required TResult Function() oldEvent,
    required TResult Function(String eventId, OtpMode mode, String? error)
        waitingOtpCode,
    required TResult Function(String eventId) creationSuccessful,
    required TResult Function(String eventId) closeEventForm,
    required TResult Function() terminationSuccessful,
    required TResult Function() loading,
    required TResult Function(String message, Object? error, StackTrace? st)
        error,
  }) {
    return waitingOtpCode(eventId, mode, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
  }) {
    return waitingOtpCode?.call(eventId, mode, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
    required TResult orElse(),
  }) {
    if (waitingOtpCode != null) {
      return waitingOtpCode(eventId, mode, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEventVerified value) eventVerified,
    required TResult Function(EventOnline value) eventOnline,
    required TResult Function(AddEventInitial value) initial,
    required TResult Function(OldEvent value) oldEvent,
    required TResult Function(WaitingOtpCode value) waitingOtpCode,
    required TResult Function(EventCreationSuccessful value) creationSuccessful,
    required TResult Function(CloseEventForm value) closeEventForm,
    required TResult Function(EventTerminationSuccessful value)
        terminationSuccessful,
    required TResult Function(AddEventLoading value) loading,
    required TResult Function(AddEventError value) error,
  }) {
    return waitingOtpCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
  }) {
    return waitingOtpCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
    required TResult orElse(),
  }) {
    if (waitingOtpCode != null) {
      return waitingOtpCode(this);
    }
    return orElse();
  }
}

abstract class WaitingOtpCode implements AddEventState {
  const factory WaitingOtpCode(final String eventId, final OtpMode mode,
      {final String? error}) = _$WaitingOtpCode;

  String get eventId;
  OtpMode get mode;
  String? get error;
  @JsonKey(ignore: true)
  _$$WaitingOtpCodeCopyWith<_$WaitingOtpCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventCreationSuccessfulCopyWith<$Res> {
  factory _$$EventCreationSuccessfulCopyWith(_$EventCreationSuccessful value,
          $Res Function(_$EventCreationSuccessful) then) =
      __$$EventCreationSuccessfulCopyWithImpl<$Res>;
  $Res call({String eventId});
}

/// @nodoc
class __$$EventCreationSuccessfulCopyWithImpl<$Res>
    extends _$AddEventStateCopyWithImpl<$Res>
    implements _$$EventCreationSuccessfulCopyWith<$Res> {
  __$$EventCreationSuccessfulCopyWithImpl(_$EventCreationSuccessful _value,
      $Res Function(_$EventCreationSuccessful) _then)
      : super(_value, (v) => _then(v as _$EventCreationSuccessful));

  @override
  _$EventCreationSuccessful get _value =>
      super._value as _$EventCreationSuccessful;

  @override
  $Res call({
    Object? eventId = freezed,
  }) {
    return _then(_$EventCreationSuccessful(
      eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventCreationSuccessful implements EventCreationSuccessful {
  const _$EventCreationSuccessful(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'AddEventState.creationSuccessful(eventId: $eventId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventCreationSuccessful &&
            const DeepCollectionEquality().equals(other.eventId, eventId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(eventId));

  @JsonKey(ignore: true)
  @override
  _$$EventCreationSuccessfulCopyWith<_$EventCreationSuccessful> get copyWith =>
      __$$EventCreationSuccessfulCopyWithImpl<_$EventCreationSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, double latitude,
            double longitude, bool canStart, String? message)
        eventVerified,
    required TResult Function(CodingEventDTO event) eventOnline,
    required TResult Function() initial,
    required TResult Function() oldEvent,
    required TResult Function(String eventId, OtpMode mode, String? error)
        waitingOtpCode,
    required TResult Function(String eventId) creationSuccessful,
    required TResult Function(String eventId) closeEventForm,
    required TResult Function() terminationSuccessful,
    required TResult Function() loading,
    required TResult Function(String message, Object? error, StackTrace? st)
        error,
  }) {
    return creationSuccessful(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
  }) {
    return creationSuccessful?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
    required TResult orElse(),
  }) {
    if (creationSuccessful != null) {
      return creationSuccessful(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEventVerified value) eventVerified,
    required TResult Function(EventOnline value) eventOnline,
    required TResult Function(AddEventInitial value) initial,
    required TResult Function(OldEvent value) oldEvent,
    required TResult Function(WaitingOtpCode value) waitingOtpCode,
    required TResult Function(EventCreationSuccessful value) creationSuccessful,
    required TResult Function(CloseEventForm value) closeEventForm,
    required TResult Function(EventTerminationSuccessful value)
        terminationSuccessful,
    required TResult Function(AddEventLoading value) loading,
    required TResult Function(AddEventError value) error,
  }) {
    return creationSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
  }) {
    return creationSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
    required TResult orElse(),
  }) {
    if (creationSuccessful != null) {
      return creationSuccessful(this);
    }
    return orElse();
  }
}

abstract class EventCreationSuccessful implements AddEventState {
  const factory EventCreationSuccessful(final String eventId) =
      _$EventCreationSuccessful;

  String get eventId;
  @JsonKey(ignore: true)
  _$$EventCreationSuccessfulCopyWith<_$EventCreationSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CloseEventFormCopyWith<$Res> {
  factory _$$CloseEventFormCopyWith(
          _$CloseEventForm value, $Res Function(_$CloseEventForm) then) =
      __$$CloseEventFormCopyWithImpl<$Res>;
  $Res call({String eventId});
}

/// @nodoc
class __$$CloseEventFormCopyWithImpl<$Res>
    extends _$AddEventStateCopyWithImpl<$Res>
    implements _$$CloseEventFormCopyWith<$Res> {
  __$$CloseEventFormCopyWithImpl(
      _$CloseEventForm _value, $Res Function(_$CloseEventForm) _then)
      : super(_value, (v) => _then(v as _$CloseEventForm));

  @override
  _$CloseEventForm get _value => super._value as _$CloseEventForm;

  @override
  $Res call({
    Object? eventId = freezed,
  }) {
    return _then(_$CloseEventForm(
      eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CloseEventForm implements CloseEventForm {
  const _$CloseEventForm(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'AddEventState.closeEventForm(eventId: $eventId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloseEventForm &&
            const DeepCollectionEquality().equals(other.eventId, eventId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(eventId));

  @JsonKey(ignore: true)
  @override
  _$$CloseEventFormCopyWith<_$CloseEventForm> get copyWith =>
      __$$CloseEventFormCopyWithImpl<_$CloseEventForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, double latitude,
            double longitude, bool canStart, String? message)
        eventVerified,
    required TResult Function(CodingEventDTO event) eventOnline,
    required TResult Function() initial,
    required TResult Function() oldEvent,
    required TResult Function(String eventId, OtpMode mode, String? error)
        waitingOtpCode,
    required TResult Function(String eventId) creationSuccessful,
    required TResult Function(String eventId) closeEventForm,
    required TResult Function() terminationSuccessful,
    required TResult Function() loading,
    required TResult Function(String message, Object? error, StackTrace? st)
        error,
  }) {
    return closeEventForm(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
  }) {
    return closeEventForm?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
    required TResult orElse(),
  }) {
    if (closeEventForm != null) {
      return closeEventForm(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEventVerified value) eventVerified,
    required TResult Function(EventOnline value) eventOnline,
    required TResult Function(AddEventInitial value) initial,
    required TResult Function(OldEvent value) oldEvent,
    required TResult Function(WaitingOtpCode value) waitingOtpCode,
    required TResult Function(EventCreationSuccessful value) creationSuccessful,
    required TResult Function(CloseEventForm value) closeEventForm,
    required TResult Function(EventTerminationSuccessful value)
        terminationSuccessful,
    required TResult Function(AddEventLoading value) loading,
    required TResult Function(AddEventError value) error,
  }) {
    return closeEventForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
  }) {
    return closeEventForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
    required TResult orElse(),
  }) {
    if (closeEventForm != null) {
      return closeEventForm(this);
    }
    return orElse();
  }
}

abstract class CloseEventForm implements AddEventState {
  const factory CloseEventForm(final String eventId) = _$CloseEventForm;

  String get eventId;
  @JsonKey(ignore: true)
  _$$CloseEventFormCopyWith<_$CloseEventForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventTerminationSuccessfulCopyWith<$Res> {
  factory _$$EventTerminationSuccessfulCopyWith(
          _$EventTerminationSuccessful value,
          $Res Function(_$EventTerminationSuccessful) then) =
      __$$EventTerminationSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventTerminationSuccessfulCopyWithImpl<$Res>
    extends _$AddEventStateCopyWithImpl<$Res>
    implements _$$EventTerminationSuccessfulCopyWith<$Res> {
  __$$EventTerminationSuccessfulCopyWithImpl(
      _$EventTerminationSuccessful _value,
      $Res Function(_$EventTerminationSuccessful) _then)
      : super(_value, (v) => _then(v as _$EventTerminationSuccessful));

  @override
  _$EventTerminationSuccessful get _value =>
      super._value as _$EventTerminationSuccessful;
}

/// @nodoc

class _$EventTerminationSuccessful implements EventTerminationSuccessful {
  const _$EventTerminationSuccessful();

  @override
  String toString() {
    return 'AddEventState.terminationSuccessful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventTerminationSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, double latitude,
            double longitude, bool canStart, String? message)
        eventVerified,
    required TResult Function(CodingEventDTO event) eventOnline,
    required TResult Function() initial,
    required TResult Function() oldEvent,
    required TResult Function(String eventId, OtpMode mode, String? error)
        waitingOtpCode,
    required TResult Function(String eventId) creationSuccessful,
    required TResult Function(String eventId) closeEventForm,
    required TResult Function() terminationSuccessful,
    required TResult Function() loading,
    required TResult Function(String message, Object? error, StackTrace? st)
        error,
  }) {
    return terminationSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
  }) {
    return terminationSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
    required TResult orElse(),
  }) {
    if (terminationSuccessful != null) {
      return terminationSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEventVerified value) eventVerified,
    required TResult Function(EventOnline value) eventOnline,
    required TResult Function(AddEventInitial value) initial,
    required TResult Function(OldEvent value) oldEvent,
    required TResult Function(WaitingOtpCode value) waitingOtpCode,
    required TResult Function(EventCreationSuccessful value) creationSuccessful,
    required TResult Function(CloseEventForm value) closeEventForm,
    required TResult Function(EventTerminationSuccessful value)
        terminationSuccessful,
    required TResult Function(AddEventLoading value) loading,
    required TResult Function(AddEventError value) error,
  }) {
    return terminationSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
  }) {
    return terminationSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
    required TResult orElse(),
  }) {
    if (terminationSuccessful != null) {
      return terminationSuccessful(this);
    }
    return orElse();
  }
}

abstract class EventTerminationSuccessful implements AddEventState {
  const factory EventTerminationSuccessful() = _$EventTerminationSuccessful;
}

/// @nodoc
abstract class _$$AddEventLoadingCopyWith<$Res> {
  factory _$$AddEventLoadingCopyWith(
          _$AddEventLoading value, $Res Function(_$AddEventLoading) then) =
      __$$AddEventLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddEventLoadingCopyWithImpl<$Res>
    extends _$AddEventStateCopyWithImpl<$Res>
    implements _$$AddEventLoadingCopyWith<$Res> {
  __$$AddEventLoadingCopyWithImpl(
      _$AddEventLoading _value, $Res Function(_$AddEventLoading) _then)
      : super(_value, (v) => _then(v as _$AddEventLoading));

  @override
  _$AddEventLoading get _value => super._value as _$AddEventLoading;
}

/// @nodoc

class _$AddEventLoading implements AddEventLoading {
  const _$AddEventLoading();

  @override
  String toString() {
    return 'AddEventState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddEventLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, double latitude,
            double longitude, bool canStart, String? message)
        eventVerified,
    required TResult Function(CodingEventDTO event) eventOnline,
    required TResult Function() initial,
    required TResult Function() oldEvent,
    required TResult Function(String eventId, OtpMode mode, String? error)
        waitingOtpCode,
    required TResult Function(String eventId) creationSuccessful,
    required TResult Function(String eventId) closeEventForm,
    required TResult Function() terminationSuccessful,
    required TResult Function() loading,
    required TResult Function(String message, Object? error, StackTrace? st)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEventVerified value) eventVerified,
    required TResult Function(EventOnline value) eventOnline,
    required TResult Function(AddEventInitial value) initial,
    required TResult Function(OldEvent value) oldEvent,
    required TResult Function(WaitingOtpCode value) waitingOtpCode,
    required TResult Function(EventCreationSuccessful value) creationSuccessful,
    required TResult Function(CloseEventForm value) closeEventForm,
    required TResult Function(EventTerminationSuccessful value)
        terminationSuccessful,
    required TResult Function(AddEventLoading value) loading,
    required TResult Function(AddEventError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AddEventLoading implements AddEventState {
  const factory AddEventLoading() = _$AddEventLoading;
}

/// @nodoc
abstract class _$$AddEventErrorCopyWith<$Res> {
  factory _$$AddEventErrorCopyWith(
          _$AddEventError value, $Res Function(_$AddEventError) then) =
      __$$AddEventErrorCopyWithImpl<$Res>;
  $Res call({String message, Object? error, StackTrace? st});
}

/// @nodoc
class __$$AddEventErrorCopyWithImpl<$Res>
    extends _$AddEventStateCopyWithImpl<$Res>
    implements _$$AddEventErrorCopyWith<$Res> {
  __$$AddEventErrorCopyWithImpl(
      _$AddEventError _value, $Res Function(_$AddEventError) _then)
      : super(_value, (v) => _then(v as _$AddEventError));

  @override
  _$AddEventError get _value => super._value as _$AddEventError;

  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? st = freezed,
  }) {
    return _then(_$AddEventError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed ? _value.error : error,
      st: st == freezed
          ? _value.st
          : st // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$AddEventError implements AddEventError {
  const _$AddEventError({required this.message, this.error, this.st});

  @override
  final String message;
  @override
  final Object? error;
  @override
  final StackTrace? st;

  @override
  String toString() {
    return 'AddEventState.error(message: $message, error: $error, st: $st)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEventError &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.st, st));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(st));

  @JsonKey(ignore: true)
  @override
  _$$AddEventErrorCopyWith<_$AddEventError> get copyWith =>
      __$$AddEventErrorCopyWithImpl<_$AddEventError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, double latitude,
            double longitude, bool canStart, String? message)
        eventVerified,
    required TResult Function(CodingEventDTO event) eventOnline,
    required TResult Function() initial,
    required TResult Function() oldEvent,
    required TResult Function(String eventId, OtpMode mode, String? error)
        waitingOtpCode,
    required TResult Function(String eventId) creationSuccessful,
    required TResult Function(String eventId) closeEventForm,
    required TResult Function() terminationSuccessful,
    required TResult Function() loading,
    required TResult Function(String message, Object? error, StackTrace? st)
        error,
  }) {
    return error(message, this.error, st);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
  }) {
    return error?.call(message, this.error, st);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, double latitude, double longitude,
            bool canStart, String? message)?
        eventVerified,
    TResult Function(CodingEventDTO event)? eventOnline,
    TResult Function()? initial,
    TResult Function()? oldEvent,
    TResult Function(String eventId, OtpMode mode, String? error)?
        waitingOtpCode,
    TResult Function(String eventId)? creationSuccessful,
    TResult Function(String eventId)? closeEventForm,
    TResult Function()? terminationSuccessful,
    TResult Function()? loading,
    TResult Function(String message, Object? error, StackTrace? st)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, this.error, st);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEventVerified value) eventVerified,
    required TResult Function(EventOnline value) eventOnline,
    required TResult Function(AddEventInitial value) initial,
    required TResult Function(OldEvent value) oldEvent,
    required TResult Function(WaitingOtpCode value) waitingOtpCode,
    required TResult Function(EventCreationSuccessful value) creationSuccessful,
    required TResult Function(CloseEventForm value) closeEventForm,
    required TResult Function(EventTerminationSuccessful value)
        terminationSuccessful,
    required TResult Function(AddEventLoading value) loading,
    required TResult Function(AddEventError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEventVerified value)? eventVerified,
    TResult Function(EventOnline value)? eventOnline,
    TResult Function(AddEventInitial value)? initial,
    TResult Function(OldEvent value)? oldEvent,
    TResult Function(WaitingOtpCode value)? waitingOtpCode,
    TResult Function(EventCreationSuccessful value)? creationSuccessful,
    TResult Function(CloseEventForm value)? closeEventForm,
    TResult Function(EventTerminationSuccessful value)? terminationSuccessful,
    TResult Function(AddEventLoading value)? loading,
    TResult Function(AddEventError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddEventError implements AddEventState {
  const factory AddEventError(
      {required final String message,
      final Object? error,
      final StackTrace? st}) = _$AddEventError;

  String get message;
  Object? get error;
  StackTrace? get st;
  @JsonKey(ignore: true)
  _$$AddEventErrorCopyWith<_$AddEventError> get copyWith =>
      throw _privateConstructorUsedError;
}
