import 'dart:async';
import 'dart:ui';
import 'package:calendar_view/calendar_view.dart';
import 'package:collection/collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cw_live_map/application/stages_stream.dart';
import 'package:cw_live_map/cloud.dart';
import 'package:cw_live_map/data/dto/coding_event.dart';
import 'package:cw_live_map/data/dto/fiaccola_stage.dart';
import 'package:cw_live_map/data/dto/stats.dart';
import 'package:cw_live_map/ui/screens/fiaccola_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../ui/screens/realtime_map.dart';

final statusStreamProvider = StreamProvider<StatsDTO>((ref) async* {
  final stream = Cloud.statsDoc.snapshots();
  await for (final snap in stream) {
    if (snap.exists) {
      final data = snap.data();
      if (data != null) {
        yield StatsDTO.fromJson(data);
      }
    }
  }
});

final eventStreamProvider = StreamProvider<List<CodingEventDTO>>((ref) async* {
  final stream = Cloud.eventCollection.snapshots();

  await for (final snap in stream) {
    print('${snap.docs.length} events trovati');
    final list = <CodingEventDTO>[];
    for (int i = 0; i < snap.docs.length; i++) {
      final d = snap.docs[i].data();
      print(d);
      try {
        final s = CodingEventDTO.fromJson(d);
        list.add(s);
      } catch (ex, st) {
        print(ex);
        print(st);
      }
    }
    yield list;
  }
});

final markersProvider = FutureProvider<Set<Marker>>((ref) async {
  final list = ref.watch(eventStreamProvider).value ?? [];

  return list
      .map(
        (e) => Marker(
          markerId: MarkerId(e.id),
          // icon: fiaccola!,
          icon: e.status == 'on' ? livePin : offPin,
          infoWindow: InfoWindow(
            title: e.name,
            snippet: e.loc != null ? 'Linee di codice: ${e.loc ?? '-'}' : null,
            // onTap: () {
            //   print('tap  on ${e.id}');
            // },
          ),
          position: LatLng(e.location.latitude, e.location.longitude),
        ),
      )
      .toSet();
});

late BitmapDescriptor livePin;
late BitmapDescriptor offPin;
late BitmapDescriptor fiaccolaPin;

Future<BitmapDescriptor> getCustomPinWithBorder(
  int sizeInt, {
  String? text,
  Color? baseColor,
  Color? borderColor,
}) async {
  print('build custom pin');
  final width = sizeInt.toDouble();
  final height = sizeInt;
  final size = Size(width, width);
  final PictureRecorder pictureRecorder = PictureRecorder();
  final Canvas canvas = Canvas(pictureRecorder);
  // final Paint paint1 = Paint()..color = color;
  // final Paint paint2 = Paint()..color = Colors.white;

  //Shadow
  Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
  paint_0_fill.color = baseColor ?? const Color(0xFFFA6825);
  Paint paintBorder = Paint()
    ..color = Colors.white
    ..strokeWidth = size.width / 20
    ..style = PaintingStyle.stroke;
  final center = Offset(size.width * 0.5000000, size.height * 0.5);
  final radius = (width / 2) * 0.95;
  canvas.drawCircle(center, radius, paint_0_fill);
  canvas.drawCircle(center, radius, paintBorder);

  final img = await pictureRecorder
      .endRecording()
      .toImage(width.toInt(), height.toInt());
  final data = await img.toByteData(format: ImageByteFormat.png);

  if (data?.buffer != null) {
    final b = BitmapDescriptor.fromBytes(data!.buffer.asUint8List());
    /*if (text == null) {
      standardPin = b;
    }*/
    return b;
  }
  return BitmapDescriptor.defaultMarker;
}

final mapProvider = Provider<MapNotifier>((ref) {
  return MapNotifier(ref);
});

class MapNotifier {
  Timer? timer;
  final Ref ref;

  // final List<FiaccolaStage> stages;

  MapNotifier(this.ref) {
    timer = Timer.periodic(const Duration(minutes: 5), (timer) {
      checkFiaccola();
    });
  }

  updateStages(List<FiaccolaStage> stages) {
    this.stages = stages;
    timer?.cancel();
    checkFiaccola();
    timer = Timer.periodic(const Duration(minutes: 5), (timer) {
      checkFiaccola();
    });
  }

  List<FiaccolaStage> stages = [];

  checkFiaccola() {
    print('checkFiaccola');
    final now = DateTime.now();
    // final fake = DateTime(now.year, now.month, 10, now.hour, now.minute);
    final fiaccola = stages.firstWhereOrNull(
        (f) => now.isAfter(f.startTime) && now.isBefore(f.endTime));
    print('checkFiaccola : ${fiaccola?.region}');
    print(fiaccola?.startTime);
    print(fiaccola?.endTime);

    if (fiaccola != null) {
      final m = Marker(
        icon: fiaccolaPin,
        markerId: const MarkerId('fiaccola'),
        position:
            LatLng(fiaccola.location.latitude, fiaccola.location.longitude),
        infoWindow: InfoWindow(title: fiaccola.region, snippet: fiaccola.label),
      );
      ref.read(markersStateProvider.notifier).update((state) => {...state, m});
    } else {
      ref.read(markersStateProvider.notifier).update((state) {
        final s = state.toSet();
        s.removeWhere(
            (element) => element.markerId == const MarkerId('fiaccola'));
        return s;
      });
    }
  }
}
