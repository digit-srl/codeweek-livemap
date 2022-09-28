/*
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final eventsStatsStreamProvider = StreamProvider<List<CodingEventDTO>>((ref) async* {
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


class EventsStatsScreen extends StatefulWidget {
  const EventsStatsScreen({Key? key}) : super(key: key);

  @override
  State<EventsStatsScreen> createState() => _EventsStatsScreenState();
}

class _EventsStatsScreenState extends State<EventsStatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
*/
