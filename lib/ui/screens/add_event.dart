import 'package:cw_live_map/application/add_event_state.dart';
import 'package:cw_live_map/data/dto/coding_event.dart';
import 'package:cw_live_map/ui/screens/realtime_map.dart';
import 'package:cw_live_map/ui/widgets/my_dropdown.dart';
import 'package:cw_live_map/ui/widgets/my_text_field.dart';
import 'package:cw_live_map/ui/widgets/waiting_otp_code.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/add_event_notifier.dart';
import '../widgets/info_text.dart';

enum TypeOfCode {
  text, //testuale
  visual, //visuale
  unplugged,
  robot,
  pixelArt,
}

extension TypeOfCodeX on TypeOfCode {
  String get text {
    switch (this) {
      case TypeOfCode.text:
        return 'Testuale';
      case TypeOfCode.visual:
        return 'Visuale';
      case TypeOfCode.unplugged:
        return 'Unplugged';
      case TypeOfCode.robot:
        return 'Robot';
      case TypeOfCode.pixelArt:
        return 'Pixel Art';
    }
  }
}

class AddEventScreen extends ConsumerWidget {
  static const String routeName = '/add';

  const AddEventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addEventNotifierProvider);
    return Scaffold(
      body: Center(
        child: Card(
          child: AnimatedContainer(
            padding: const EdgeInsets.all(48),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              // color: Theme.of(context).,
            ),
            duration: const Duration(milliseconds: 300),
            constraints: const BoxConstraints(maxWidth: 500),
            // alignment: Alignment.center,
            child: state.when(
              initial: () => const AddEventUrl(),
              eventVerified:
                  (String id, String name, double latitude, double longitude) =>
                      StartEvent(
                eventId: id,
                name: name,
                latitude: latitude,
                longitude: longitude,
              ),
              eventOnline: (CodingEventDTO event) => EventOnlineWidget(
                event: event,
              ),
              error: (String message, Object? error, StackTrace? st) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(message),
                  if (kDebugMode)
                    Text(
                      st?.toString() ?? '',
                      maxLines: 10,
                    ),
                  TextButton(
                    onPressed: () {
                      ref.read(addEventNotifierProvider.notifier).reset();
                    },
                    child: const Text('Torna al form'),
                  ),
                ],
              ),
              creationSuccessful: (eventId) => GenericMessage(
                message: 'Evento creato con successo',
                extra: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 16),
                    const Text('oppure'),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () {
                        ref
                            .read(addEventNotifierProvider.notifier)
                            .requestOtpCode(eventId, OtpMode.termination);
                      },
                      child: const Text('Termina evento'),
                    ),
                  ],
                ),
              ),
              terminationSuccessful: () => GenericMessage(
                message: 'Evento terminato correttamente',
                extra: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 16),
                    const Text('oppure'),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () {
                        ref.read(addEventNotifierProvider.notifier).reset();
                      },
                      child: const Text('Torna al form'),
                    ),
                  ],
                ),
              ),
              closeEventForm: (eventId) => CloseEventFormWidget(
                eventId: eventId,
              ),
              waitingOtpCode: (eventId, mode, error) {
                return WaitingOtpCodeWidget(
                  error: error,
                  verify: (String otpCode) {
                    ref
                        .read(addEventNotifierProvider.notifier)
                        .verifyOtpCode(eventId, otpCode, mode);
                  },
                );
              },
              loading: () {
                return const SizedBox(
                  width: 200,
                  height: 200,
                  child: Center(child: CircularProgressIndicator()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class GenericMessage extends StatelessWidget {
  const GenericMessage({super.key, required this.message, this.extra});

  final Widget? extra;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          message,
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 32),
        ElevatedButton(
            onPressed: () {
              context.go(RealtimeMap.routeName);
            },
            child: const Text('Vai alla mappa')),
        if (extra != null) extra!
      ],
    );
  }
}

class AddEventUrl extends StatefulHookConsumerWidget {
  const AddEventUrl({Key? key}) : super(key: key);

  @override
  ConsumerState<AddEventUrl> createState() => _AddEventUrlState();
}

class _AddEventUrlState extends ConsumerState<AddEventUrl> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Verifica evento',
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(height: 24),
          CMITextField(
            controller: controller,
            hintText: 'Inserisci il link dell\'evento',
            validator: (value) {
              if (value == null) return null;
              if (eventReg.hasMatch(value)) {
                return null;
              }
              return 'Url non valido';
            },
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                final url = controller.text.trim();
                ref.read(addEventNotifierProvider.notifier).checkUrl(url);
              }
            },
            child: const Text('Verifica'),
          ),
        ],
      ),
    );
  }
}

class StartEvent extends ConsumerWidget {
  final String eventId;
  final String name;
  final double latitude;
  final double longitude;

  const StartEvent({
    Key? key,
    required this.eventId,
    required this.name,
    required this.latitude,
    required this.longitude,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Aggiungi evento alla mappa',
          style: Theme.of(context).textTheme.headline4,
        ),
        InfoText(
          label: 'Nome',
          value: name,
        ),
        InfoText(
          label: 'Lat',
          value: latitude.toString(),
        ),
        InfoText(
          label: 'Long',
          value: longitude.toString(),
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: () {
            ref
                .read(addEventNotifierProvider.notifier)
                .requestOtpCode(eventId, OtpMode.creation);
          },
          child: const Text('Avvia'),
        ),
      ],
    );
  }
}

class EventOnlineWidget extends ConsumerWidget {
  final CodingEventDTO event;

  const EventOnlineWidget({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text(
              event.status == 'off' ? 'Evento concluso' : 'Evento in corso',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Spacer(),
            Icon(
              event.status == 'off' ? Icons.circle : Icons.check_circle,
              color: event.status == 'off' ? Colors.red : Colors.green,
            ),
          ],
        ),
        const SizedBox(height: 16),
        EventInfo(event: event),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: () {
            if (event.status == 'off') {
              context.go(RealtimeMap.routeName);
            } else {
              ref
                  .read(addEventNotifierProvider.notifier)
                  .requestOtpCode(event.id, OtpMode.termination);
            }
          },
          child: Text(event.status == 'off' ? 'Vai alla mappa' : 'Termina'),
        ),
        if (event.status == 'off') ...[
          const SizedBox(height: 16),
          const Text('oppure'),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () {
              ref.read(addEventNotifierProvider.notifier).reset();
            },
            child: const Text('Torna al form'),
          ),
        ]
      ],
    );
  }
}

class CloseEventFormWidget extends StatefulHookConsumerWidget {
  final String eventId;

  const CloseEventFormWidget({
    Key? key,
    required this.eventId,
  }) : super(key: key);

  @override
  ConsumerState<CloseEventFormWidget> createState() =>
      _CloseEventFormWidgetState();
}

class _CloseEventFormWidgetState extends ConsumerState<CloseEventFormWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final participantController = useTextEditingController();
    final locController = useTextEditingController();
    final averageAgeController = useTextEditingController();

    final selectedTypeOfCode = useState<TypeOfCode?>(null);
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // WaitingOtpCodeWidget(verify: (String otpCode) {
          //   ref
          //       .read(addEventNotifierProvider.notifier)
          //       .verifyOtpCode(widget.eventId, otpCode);
          // },),
          const Text('Compila il form per terminare l\'evento'),
          const SizedBox(height: 16),
          CMITextField(
            controller: participantController,
            hintText: 'N. partecipanti',
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.number,
            validator: (v) {
              if (v == null) return null;
              if (int.tryParse(v) == null) {
                return 'Input non valido';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          CMITextField(
            controller: averageAgeController,
            hintText: 'Età media',
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.number,
            validator: (v) {
              if (v == null) return null;
              if (int.tryParse(v) == null) {
                return 'Input non valido';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          CMITextField(
            controller: locController,
            hintText: 'Linee di codice',
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.number,
            validator: (v) {
              if (v == null) return null;
              if (int.tryParse(v) == null) {
                return 'Input non valido';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          CMIDropdownButton<TypeOfCode>(
            validator: (value) {
              if (value == null) {
                return 'Campo obbligatorio';
              }
              return null;
            },
            label: 'Tipo di attività',
            value: selectedTypeOfCode.value,
            items: TypeOfCode.values
                .map((e) =>
                    DropdownMenuItem<TypeOfCode>(value: e, child: Text(e.text)))
                .toList(),
            onChanged: (v) {
              if (v == null) {
                return;
              }
              selectedTypeOfCode.value = v;
            },
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                final loc = int.parse(locController.text.trim());
                final participants =
                    int.parse(participantController.text.trim());
                final averageAge = int.parse(averageAgeController.text.trim());
                ref.read(addEventNotifierProvider.notifier).closeEvent(
                      widget.eventId,
                      participants,
                      averageAge,
                      loc,
                      selectedTypeOfCode.value!,
                    );
              }
            },
            child: const Text('Termina evento'),
          ),
          const SizedBox(height: 24),
          TextButton(
              onPressed: () {
                ref.read(addEventNotifierProvider.notifier).reset();
              },
              child: const Text('Annulla')),
        ],
      ),
    );
  }
}

class EventInfo extends StatelessWidget {
  final CodingEventDTO event;

  const EventInfo({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        InfoText(
          label: 'Nome',
          value: event.name,
        ),
        Row(
          children: [
            Flexible(
              child: InfoText(
                label: 'Lat',
                value: event.location.latitude.toString(),
              ),
            ),
            Flexible(
              child: InfoText(
                label: 'Long',
                value: event.location.longitude.toString(),
              ),
            ),
          ],
        ),
        Row(
          children: [
            if (event.loc != null)
              Flexible(
                child: InfoText(
                  label: 'Linee di codice',
                  value: event.loc.toString(),
                ),
              ),
            if (event.typeOfCode != null)
              Flexible(
                child: InfoText(
                  label: 'Tipo di attività',
                  value: event.typeOfCode?.text,
                ),
              ),
          ],
        ),
        Row(
          children: [
            if (event.participants != null)
              Flexible(
                child: InfoText(
                  label: 'N. Partecipanti',
                  value: event.participants.toString(),
                ),
              ),
            if (event.averageAge != null)
              Flexible(
                child: InfoText(
                  label: 'Età media',
                  value: event.averageAge.toString(),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
