import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cw_live_map/application/add_event_state.dart';
import 'package:cw_live_map/data/dto/check_event_response.dart';
import 'package:cw_live_map/data/dto/coding_event.dart';
import 'package:cw_live_map/ui/screens/add_event.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../cloud.dart';
import '../consts.dart';
import 'package:intl/intl.dart';
import '../data/dto/event.dart';

extension DateTimeX on DateTime {
  DateTime get midnight => DateTime(year, month, day);
}

const pattern = r'https?://(?:www\.)?codeweek\.eu/view/([0-9]*)/.*';

final eventReg = RegExp(pattern);

final addEventNotifierProvider =
    StateNotifierProvider<AddEventNotifier, AddEventState>((ref) {
  return AddEventNotifier();
});

class AddEventNotifier extends StateNotifier<AddEventState> {
  AddEventNotifier() : super(const AddEventInitial()) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }

  final format = DateFormat("dd/MM/yyyy");

  // final format = DateFormat();
  CodingEventDTO? cacheEvent;
  final dio = Dio();

  // 2021
  //https://codeweek.eu/view/363207/dunya-su-gunu

  // Past
  // https://codeweek.eu/view/449959/ic-terralba-genova-g-marconi-classe-5b-a-procida-con-codytrip

  // Future
  // https://codeweek.eu/view/454100/happy-codeweek-anniversary-challenge
  checkUrl(String url) async {
    cacheEvent = null;
    if (eventReg.hasMatch(url)) {
      state = const AddEventLoading();
      try {
        final match = eventReg.firstMatch(url);
        final matchedText = match?.group(0);
        print(matchedText);
        print(match?.group(1));
        final eventId = match?.group(1);
        if (eventId == null) {
          state = const AddEventError(message: 'ID Evento non riconosciuto');
          return;
        }

        final res =
            await dio.get(checkEventUrl, queryParameters: {'eventId': eventId});

        if (res.statusCode == 200) {
          final map = Map<String, dynamic>.from(res.data);
          final d = CheckUrlResponse.fromJson(map);
          cacheEvent = d.event;
          if (d.status == 'old_event') {
            state = const OldEvent();
          } else if (d.status == 'exists' && cacheEvent != null) {
            state = EventOnline(event: cacheEvent!);
          } else if (d.status == 'not_exists' && cacheEvent != null) {
            final start = cacheEvent!.startDate!.midnight;
            final end = cacheEvent!.endDate!.midnight.add(Duration(hours:23,minutes: 59,seconds: 59));
            final now = DateTime.now();

            // Evento passato
            if (now.midnight.isAfter(end)) {
              cacheEvent = cacheEvent!.copyWith(status: 'past');
              state = PastEvent(cacheEvent!);
              return;
            }
            final canStart = now.isAfter(start) && now.isBefore(end);
            // String? message;

            state = AddEventVerified(
              id: eventId,
              name: cacheEvent!.name,
              latitude: cacheEvent!.location.latitude,
              longitude: cacheEvent!.location.longitude,
              canStart: canStart,
              message: canStart
                  ? null
                  : 'Potrai aprire l\'evento a partire dal ${format.format(start)}',
            );
          }
        } else {
          state = const AddEventError(
            message:
                'Si è verificato un errore durante la verifica dell\'evento!',
          );
        }

        /* final doc = await Cloud.eventDoc(eventId).get();
        final data = doc.data();
        if (doc.exists && data != null) {
          final event = CodingEventDTO.fromJson(data);
          state = EventOnline(event: event);
        } else {
          //Get data from scraping or json

          // https://codeweek.eu/api/event-detail/449959

          final uri = 'https://codeweek.eu/api/event-detail/$eventId';
          final res = await dio.get(uri);

          if (res.statusCode == 200) {
            final map = Map<String, dynamic>.from(res.data);
            final event = EventDTO.fromJson(map);
            final geoposition = event.data.geoposition.split(',');
            final lat = double.parse(geoposition[0]);
            final long = double.parse(geoposition[1]);
            state = AddEventVerified(
              id: eventId,
              name: event.data.title,
              latitude: lat,
              longitude: long,
            );
          } else {
            state = const AddEventError(
                // error: ex,
                // st: st,
                message:
                    'Si è verificato un errore durante il recupero dei dati!');
          }
        }*/
      } catch (ex, st) {
        print(st);
        state = state = AddEventError(
            error: ex,
            st: st,
            message:
                'Si è verificato un errore durante la verifica dell\'evento!');
      }
    }
  }

  Future<void> startEvent(String eventId) async {
    if (cacheEvent == null) return;
    state = const AddEventLoading();
    try {
      final reference = Cloud.eventCollection.doc(eventId);
      final e = CodingEventDTO(
          id: eventId,
          name: cacheEvent!.name,
          status: 'on',
          location: cacheEvent!.location);
      await reference.set(e.toJson());
      state = EventCreationSuccessful(eventId);
    } catch (ex, st) {
      state = AddEventError(
        error: ex,
        st: st,
        message: 'Si è verificato un errore durante la creazione',
      );
    }
  }

  void closeEvent(
    String eventId,
    int participants,
    int averageAge,
    int loc,
    TypeOfCode typeOfCode,
  ) async {
    state = const AddEventLoading();
    try {
      final reference = Cloud.eventCollection.doc(eventId);

      final map = {
        'status': 'off',
        'loc': loc,
        'participants': participants,
        'averageAge': averageAge,
        'typeOfCode': enumToString(typeOfCode),
      };
      if (cacheEvent != null) {
        map['id'] = cacheEvent!.id;
        map['name'] = cacheEvent!.name;
        map['location'] = cacheEvent!.location;
      }

      await reference.set(map, SetOptions(merge: true));
      state = const EventTerminationSuccessful();
    } catch (ex, st) {
      print(st);
      state = AddEventError(
          error: ex,
          st: st,
          message: 'Si è verificato un errore durante la creazione');
    }
  }

  void reset() {
    state = const AddEventInitial();
  }

  void requestOtpCode(String eventId, OtpMode mode) async {
    state = const AddEventLoading();
    final res = await dio.post(requestOtpCodeUrl, data: {"eventId": eventId});
    try {
      if (res.statusCode == 200) {
        final data = Map<String, dynamic>.from(res.data);
        if (data.containsKey('status') && data['status'] == 'email_sent') {
          state = WaitingOtpCode(eventId, mode);
          return;
        }
      }
      state = const AddEventError(
          message: 'Si è verificato un errore durante la richiesta');
    } on DioError catch (ex) {
      print(ex);
      state = const AddEventError(
          message: 'Si è verificato un errore durante la richiesta');
    }
  }

  void verifyOtpCode(String eventId, String otpCode, OtpMode mode) async {
    final cache = state;
    if (cache is WaitingOtpCode) {
      state = const AddEventLoading();
      try {
        final res = await dio.post(verifyOtpCodeUrl,
            data: {"eventId": eventId, "otpCode": otpCode});

        if (res.statusCode == 200) {
          final data = Map<String, dynamic>.from(res.data);
          if (data.containsKey('status') &&
              data['status'] == 'otp_code_verified') {
            if (mode == OtpMode.creation) {
              await startEvent(eventId);
            } else {
              state = CloseEventForm(eventId);
            }
          }
        } else {
          state = cache.copyWith(error: 'Si è verificato un errore! Riprova!');
        }
      } on DioError catch (ex) {
        print(ex);
        state = cache.copyWith(error: 'Codice OTP non valido');
      }
    }
  }
}
