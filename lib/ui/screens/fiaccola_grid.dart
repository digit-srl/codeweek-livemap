import 'package:calendar_view/calendar_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cw_live_map/application/stages_stream.dart';
import 'package:cw_live_map/cloud.dart';
import 'package:cw_live_map/data/dto/fiaccola_stage.dart';
import 'package:cw_live_map/ui/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pluto_grid/pluto_grid.dart';

/*/// PlutoGrid Example
//
/// For more examples, go to the demo web link on the github below.
class PlutoGridExamplePage extends StatefulWidget {
  static const String routeName = '/stages';

  const PlutoGridExamplePage({Key? key}) : super(key: key);

  @override
  State<PlutoGridExamplePage> createState() => _PlutoGridExamplePageState();
}

class _PlutoGridExamplePageState extends State<PlutoGridExamplePage> {
  final List<PlutoColumn> columns = <PlutoColumn>[
    PlutoColumn(
      title: 'Time',
      field: 'time',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Date',
      field: 'date',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Age',
      field: 'age',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Role',
      field: 'role',
      type: PlutoColumnType.select(<String>[
        'Programmer',
        'Designer',
        'Owner',
      ]),
    ),
    PlutoColumn(
      title: 'Joined',
      field: 'joined',
      type: PlutoColumnType.date(),
    ),
    PlutoColumn(
      title: 'Working time',
      field: 'working_time',
      type: PlutoColumnType.time(),
    ),
    PlutoColumn(
      title: 'salary',
      field: 'salary',
      type: PlutoColumnType.currency(),
      footerRenderer: (rendererContext) {
        return PlutoAggregateColumnFooter(
          rendererContext: rendererContext,
          formatAsCurrency: true,
          type: PlutoAggregateColumnType.sum,
          format: '#,###',
          alignment: Alignment.center,
          titleSpanBuilder: (text) {
            return [
              const TextSpan(
                text: 'Sum',
                style: TextStyle(color: Colors.red),
              ),
              const TextSpan(text: ' : '),
              TextSpan(text: text),
            ];
          },
        );
      },
    ),
  ];

  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'user1'),
        'name': PlutoCell(value: 'Mike'),
        'age': PlutoCell(value: 20),
        'role': PlutoCell(value: 'Programmer'),
        'joined': PlutoCell(value: '2021-01-01'),
        'working_time': PlutoCell(value: '09:00'),
        'salary': PlutoCell(value: 300),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'user2'),
        'name': PlutoCell(value: 'Jack'),
        'age': PlutoCell(value: 25),
        'role': PlutoCell(value: 'Designer'),
        'joined': PlutoCell(value: '2021-02-01'),
        'working_time': PlutoCell(value: '10:00'),
        'salary': PlutoCell(value: 400),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'user3'),
        'name': PlutoCell(value: 'Suzi'),
        'age': PlutoCell(value: 40),
        'role': PlutoCell(value: 'Owner'),
        'joined': PlutoCell(value: '2021-03-01'),
        'working_time': PlutoCell(value: '11:00'),
        'salary': PlutoCell(value: 700),
      },
    ),
  ];

  /// columnGroups that can group columns can be omitted.
  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(title: 'Id', fields: ['id'], expandedColumn: true),
    PlutoColumnGroup(title: 'User information', fields: ['name', 'age']),
    PlutoColumnGroup(title: 'Status', children: [
      PlutoColumnGroup(title: 'A', fields: ['role'], expandedColumn: true),
      PlutoColumnGroup(title: 'Etc.', fields: ['joined', 'working_time']),
    ]),
  ];

  /// [PlutoGridStateManager] has many methods and properties to dynamically manipulate the grid.
  /// You can manipulate the grid dynamically at runtime by passing this through the [onLoaded] callback.
  late final PlutoGridStateManager stateManager;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: PlutoGrid(
          columns: columns,
          rows: rows,
          columnGroups: columnGroups,
          onLoaded: (PlutoGridOnLoadedEvent event) {
            stateManager = event.stateManager;
            stateManager.setShowColumnFilter(true);
          },
          onChanged: (PlutoGridOnChangedEvent event) {
            print(event);
          },
          configuration: const PlutoGridConfiguration(),
        ),
      ),
    );
  }
}*/

getRegionColor(String region){
  switch(region){
    case 'Abruzzo':
      return Colors.green;
    case 'Basilicata':
      return Colors.red;
    case 'Marche':
      return Colors.pink;
    case 'Sicilia':
      return Colors.orange;
    case 'Friuli Venezia Giulia':
      return Colors.grey;
    case 'Lombardia':
      return Colors.yellow;
    case 'Puglia':
      return Colors.lime;
    case 'Lazio':
      return Colors.purple;
    case 'Veneto':
      return Colors.grey[200];
    case 'Campania':
      return Colors.amber;
    case 'Basilicata':
      return Colors.brown;
    case 'Molise':
      return Colors.indigo;
    case 'Toscana':
      return Colors.tealAccent;
    case 'Piemonte':
      return Colors.lightBlueAccent;
    default:
      return Colors.blue;
  }
}

/*extension EventControllerX on EventController{
  removeAll(){
      // Removes the event from single event map.
      if (_events[date] != null) {
        _events[date]?.remove(event);
        _eventList.remove(event);
        notifyListeners();
        return;
      }



      // Removes the event from ranging event.
      for (final e in _rangingEventList) {
        if (e == event) {
          _rangingEventList.remove(event);
          _eventList.remove(event);
          notifyListeners();
          return;
        }
      }
  }
}*/
final eventControllerProvider = Provider<EventController<FiaccolaStage>>((ref) {
  print('eventControllerProvider START');

  ref.onDispose(() {
    print('eventControllerProvider onDispose');
  });

  final c = EventController<FiaccolaStage>();
  ref.listen(
    stagesStreamProvider,
    (previous, next) {
      final stages = next.value ?? [];
      final list = stages
          .map((e) => CalendarEventData<FiaccolaStage>(
                title: e.region,
                date: e.startTime,
                startTime: e.startTime,
                endTime: e.endTime,
                event: e,
        color: getRegionColor(e.region)
              ))
          .toList();
      final currentEvents = c.events;
      for (int i = 0; i < currentEvents.length; i++) {
        c.remove(currentEvents[i]);
      }
      c.addAll(list);
    },
    fireImmediately: true,
  );

  return c;
});

class FiaccolaCalendar extends ConsumerStatefulWidget {
  static const String routeName = '/stages';

  const FiaccolaCalendar({Key? key}) : super(key: key);

  @override
  ConsumerState<FiaccolaCalendar> createState() => _FiaccolaCalendarState();
}

class _FiaccolaCalendarState extends ConsumerState<FiaccolaCalendar> {
  @override
  Widget build(BuildContext context) {
    // ref.listen(stagesStreamProvider, (previous, next) {
    //   final list = next.value ?? [];
    //   final stages = list
    //       .map((e) => CalendarEventData<FiaccolaStage>(
    //             title: e.region,
    //             date: e.startTime,
    //             startTime: e.startTime,
    //             endTime: e.endTime,
    //             event: e,
    //           ))
    //       .toList();
    //   // ref.read(eventControllerProvider).;
    //   ref.read(eventControllerProvider).addAll(stages);
    // });
    final controller = ref.watch(eventControllerProvider);
    return CalendarControllerProvider(
      controller: controller,
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: WeekView(
              // eventTileBuilder:(data, events,b,start,end){
              //   if (events.isNotEmpty)
              //     return RoundedEventTile(
              //       borderRadius: BorderRadius.circular(6.0),
              //       title: events[0].title,
              //       titleStyle: TextStyle(
              //         fontSize: 12,
              //         color: events[0].color.accent,
              //       ),
              //       totalEvents: events.length,
              //       padding: EdgeInsets.all(7.0),
              //       backgroundColor: events[0].color,
              //     );
              //   else
              //     return Container();
              // },
              controller: controller,
              onEventTap: (e, dateTime) {
                showDialog(
                    context: context,
                    builder: (_) {
                      return Dialog(
                        child: EventDetails(event: e.first),
                      );
                    });
              },
            ),
          );
        },
      ),
    );
  }
}

class EventDetails extends HookConsumerWidget {
  final CalendarEventData<FiaccolaStage> event;

  const EventDetails({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final regionController =
        useTextEditingController(text: event.event!.region);
    final labelController = useTextEditingController(text: event.event!.label);
    final latController = useTextEditingController(
        text: event.event!.location.latitude.toString());
    final longController = useTextEditingController(
        text: event.event!.location.longitude.toString());
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          CMITextField(
            hintText: 'Regione',
            controller: regionController,
          ),
          const SizedBox(height: 8),
          CMITextField(
            hintText: 'Scuola',
            controller: labelController,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Flexible(
                child: CMITextField(
                  hintText: 'Lat',
                  controller: latController,
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: CMITextField(
                  hintText: 'Long',
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  controller: longController,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () async {
              /*for (int i = 0; i < stages.length; i++) {
                final stage = stages[i];
                final reference =
                    FirebaseFirestore.instance.collection('stages').doc();
                reference.set({
                  'id': reference.id,
                  'startTime': Timestamp.fromDate(stage.startTime),
                  'endTime': Timestamp.fromDate(stage.endTime),
                  'region': stage.region,
                  'label': stage.label,
                  'location': GeoPoint(stage.lat, stage.long)
                });
              }*/
              try {
                final stage = event.event!;
                await Cloud.stagesCollection.doc(event.event!.id).update({
                  'startTime': Timestamp.fromDate(stage.startTime),
                  'endTime': Timestamp.fromDate(stage.endTime),
                  'region': regionController.text.trim(),
                  'label': labelController.text.trim(),
                  'location': GeoPoint(
                    double.parse(latController.text.trim()),
                    double.parse(longController.text.trim()),
                  )
                });
                Navigator.of(context).pop();
              } catch (ex) {
                print(ex);
              }
            },
            child: Text('Aggiorna'),
          ),
        ],
      ),
    );
  }
}
