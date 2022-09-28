import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cw_live_map/application/map_stream.dart';
import 'package:cw_live_map/cloud.dart';
import 'package:cw_live_map/data/dto/coding_event.dart';
import 'package:cw_live_map/ui/widgets/my_text_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../main.dart';

final markersStateProvider = StateProvider<Set<Marker>>((ref) {
  return <Marker>{};
});

class RealtimeMap extends StatefulHookConsumerWidget {
  static const String routeName = '/';

  const RealtimeMap({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<RealtimeMap> createState() => _RealtimeMapState();
}

class _RealtimeMapState extends ConsumerState<RealtimeMap> {
  final markers = <Marker>{};

  @override
  Widget build(BuildContext context) {
    // final markers = ref.watch(markersProvider).value ?? {};
    // final markersState = useState<Set<Marker>>({});

    ref.listen<AsyncValue<Set<Marker>>>(markersProvider, (previous, next) {
      if (next is AsyncData) {
        final data = next.value ?? {};
        ref
            .read(markersStateProvider.notifier)
            .update((state) => {...state, ...data});
      }
    });

    final markers = ref.watch(markersStateProvider);
    // final nameController = useTextEditingController();
    // final latController = useTextEditingController();
    // final longController = useTextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
              // scrollGesturesEnabled: false,
              // zoomGesturesEnabled: false,
              // gestureRecognizers: Set()
              //   ..add(Factory<PanGestureRecognizer>(() => PanGestureRecognizer())),
              onMapCreated: (c) {
                print('map created');
                // mapController = controller;
                c.setMapStyle(mapStyle);
              },
              initialCameraPosition: const CameraPosition(
                  target: LatLng(41.9027835, 12.4963655), zoom: 5),
              markers: markers,
            ),
          ),
          /* Align(
              alignment: Alignment.topRight,
              child: Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final stats = ref.watch(statusStreamProvider).value;
                  final count = stats?.liveEventsCount.toString() ?? '-';
                  return Container(
                    margin: const EdgeInsets.all(24),
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.orange.withOpacity(0.5),
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Attività in corso: $count',style: Theme.of(context).textTheme.headline4,),
                        Text('Linee di codice: 1245',style: Theme.of(context).textTheme.headline4,),
                      ],
                    ),
                  );
                },
              ),
              ),*/
          Align(
              alignment: Alignment.topLeft,
              child: Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final stats = ref.watch(statusStreamProvider).value;
                  final count = stats?.liveEventsCount.toString() ?? '-';
                  final loc = stats?.loc.toString() ?? '-';
                  final width = MediaQuery.of(context).size.width;
                  print(width);
                  final padding = width / 85; //16 with 1512
                  return Container(
                    width: width / 4,
                    // height: width / 11,
                    child: Stack(
                      children: [
                        Container(
                          // width: width / 4.5,
                          margin: EdgeInsets.fromLTRB(
                            padding * 5,
                            padding * 2,
                            0,
                            padding * 2,
                          ),
                          padding: EdgeInsets.fromLTRB(
                            padding * 3,
                            padding / 2,
                            padding,
                            padding / 2,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(padding),
                            color: Colors.black.withOpacity(0.5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              FittedBox(
                                child: Text(
                                  'Attività in corso: $count',
                                  maxLines: 1,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      ?.copyWith(color: Colors.white),
                                ),
                              ),
                              FittedBox(
                                child: Text(
                                  'Linee di codice: $loc',
                                  maxLines: 1,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      ?.copyWith(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: padding,
                          top: padding,
                          bottom: padding,
                          child: Image.asset('assets/codeweek_live.png'),
                        )
                      ],
                    ),
                  );
                },
              )),
        ],
      ),
      // body: ListView(
      //   children: [
      //     AspectRatio(
      //       aspectRatio: 18 / 9,
      //       child: GoogleMap(
      //         zoomGesturesEnabled: false,
      //         onMapCreated: (c) {
      //           print('map created');
      //         },
      //         initialCameraPosition:
      //             CameraPosition(target: LatLng(42.7, 13.0), zoom: 3),
      //         markers: markers,
      //       ),
      //     ),
      //     const SizedBox(height: 16),
      //     Text('${markers.length} eventi sulla mappa'),
      //     const SizedBox(height: 16),
      //     CMITextField(
      //       controller: nameController,
      //       hintText: 'Nome Evento',
      //     ),
      //     const SizedBox(height: 16),
      //     Row(
      //       children: [
      //         Flexible(
      //           child: CMITextField(
      //             controller: latController,
      //             keyboardType: TextInputType.number,
      //             inputFormatters: [
      //               FilteringTextInputFormatter.allow(
      //                   RegExp(r'^\d+\.?\d{0,4}')),
      //             ],
      //             hintText: 'Latitude',
      //           ),
      //         ),
      //         Flexible(
      //           child: CMITextField(
      //             controller: longController,
      //             keyboardType: TextInputType.number,
      //             // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      //             hintText: 'Longitude',
      //           ),
      //         ),
      //       ],
      //     ),
      //     const SizedBox(height: 16),
      //     ElevatedButton(
      //         onPressed: () async {
      //           final reference =
      //              Cloud.eventCollection.doc();
      //           final e = CodingEventDTO(
      //             id: reference.id,
      //             name: nameController.text.trim(),
      //             status: 'live',
      //             location: GeoPoint(
      //               double.parse(latController.text.trim()),
      //               double.parse(longController.text.trim()),
      //             ),
      //           );
      //           reference.set(e.toJson());
      //           // livePin ??= await getCustomPinWithBorder(35);
      //           // final marker = Marker(
      //           //   markerId: MarkerId(e.id),
      //           //   icon: livePin!,
      //           //   position: LatLng(e.location.latitude, e.location.longitude),
      //           // );
      //           // ref
      //           //     .read(markersStateProvider.notifier)
      //           //     .update((state) => {...state, marker});
      //           /*setState(() {
      //             markers.add(
      //               Marker(
      //                 markerId: MarkerId(e.id),
      //                 icon: livePin!,
      //                 position:
      //                     LatLng(e.location.latitude, e.location.longitude),
      //               ),
      //             );
      //           });*/
      //         },
      //         child: Text('Aggiungi'))
      //   ],
      // ),
    );
  }
}
