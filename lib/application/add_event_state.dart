import 'package:cw_live_map/data/dto/coding_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_event_state.freezed.dart';

enum OtpMode {
  creation,termination
}
@freezed
class AddEventState with _$AddEventState {
  const factory AddEventState.eventVerified({
    required String id,
    required String name,
    required double latitude,
    required double longitude,
    required bool canStart,
    String? message,
  }) = AddEventVerified;

  const factory AddEventState.eventOnline({
    required CodingEventDTO event,
  }) = EventOnline;

  const factory AddEventState.initial() = AddEventInitial;
  const factory AddEventState.oldEvent() = OldEvent;
  const factory AddEventState.pastEvent(CodingEventDTO eventId) = PastEvent;
  const factory AddEventState.waitingOtpCode(String eventId, OtpMode mode, {String? error}) = WaitingOtpCode;
  const factory AddEventState.creationSuccessful(String eventId) = EventCreationSuccessful;
  const factory AddEventState.closeEventForm(String eventId) = CloseEventForm;
  const factory AddEventState.terminationSuccessful() = EventTerminationSuccessful;

  const factory AddEventState.loading() = AddEventLoading;
  const factory AddEventState.error({required String message, Object? error, StackTrace? st}) =
      AddEventError;
}
