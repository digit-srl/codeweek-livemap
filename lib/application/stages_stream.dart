import 'package:cw_live_map/cloud.dart';
import 'package:cw_live_map/data/dto/fiaccola_stage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final stagesStreamProvider = StreamProvider<List<FiaccolaStage>>((ref) async* {
  final stream = Cloud.stagesCollection.snapshots();
  await for (final snap in stream) {
    print('${snap.docs.length} stages trovati');
    final list = <FiaccolaStage>[];
    for (int i = 0; i < snap.docs.length; i++) {
      final d = snap.docs[i].data();
      // print(d);
      try {
        final s = FiaccolaStage.fromJson(d);
        list.add(s);
      } catch (ex, st) {
        print(ex);
        print(st);
      }
    }
    yield list;
  }
});
