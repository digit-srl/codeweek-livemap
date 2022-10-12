import 'dart:convert';

import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/i_frame.dart';

const iframeText =
    """<div style="width: calc(100% - 20px); overflow: hidden; background-color: #f95c22; padding: 10px; border: solid 1px black;"><iframe style="margin: 0; width: 100%;" title="CodeWeek Livemap" src="https://livemap.codeweek.it" width="560" height="500" frameborder="0" allowfullscreen="allowfullscreen"></iframe><div style="margin-top: 6px; font-family: sans-serif; font-size: 0.8rem; color: black;">Mappa interattiva delle attività di coding in corso per <a style="color: black; font-weight: bold; text-decoration: underline;" href="https://codeweek.eu/" target="_blank">EU CodeWeek 2022</a>. La mappa mostra anche la staffetta <a style="color: black; font-weight: bold; text-decoration: underline;" href="https://scuolafutura.pubblica.istruzione.it/codeweek22" target="_blank">Italia CodeToCode</a>, organizzata dalle EFT. Per far comparire sulla mappa la tua attività segui <a style="color: black; font-weight: bold; text-decoration: underline;" href="https://scuolafutura.pubblica.istruzione.it/codeweek22/linee-di-codice" target="_blank">queste istruzioni</a>.</div></div>""";
final staticAnchorKey = GlobalKey();

class InfoScreen extends ConsumerWidget {
  static const String routeName = '/info';

  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 48),
                  Text(
                    'LiveMap CodeWeek 2022',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(height: 16),
                  EasyRichText(
                    'Questa pagina presenta la livemap, '
                    'la mappa interattiva delle attività di coding in corso. '
                    'Chiunque conduca un’attività di coding regolarmente caricata '
                    'sul portale di CodeWeek.eu, all’inizio dell’attività è '
                    'invitato ad accendere il puntino arancione che rappresenta '
                    'la sua attività sulla livemap, mentre alla fine dell’attività '
                    'è invitato a spegnere il puntino e a rendere conto delle '
                    'linee di codice prodotte, per contribuire al conteggio '
                    'nazionale proposto dalle EFT per SCUOLA FUTURA, nell\'ambito '
                    'della staffetta Italia CodeToCode. '
                    '\n\nPer i dettagli consultate le seguenti linee guida:\n\n'
                    'Come accendere e spegnere i puntini sulla livemap\n'
                    'Come contare le righe di codice prodotte durante le attività CodeWeek\n\n'
                    'La mappa può essere inserita in qualsiasi sito web, con il seguente codice per l’embedding.',
                    patternList: [
                      EasyRichTextPattern(
                        targetString: 'CodeWeek.eu',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            final uri = Uri.parse('https://codeweek.eu/events');
                            if (await canLaunchUrl(uri)) {
                              launchUrl(uri);
                            }
                          },
                      ),
                      EasyRichTextPattern(
                        targetString: 'Italia CodeToCode',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            final uri = Uri.parse(
                                'https://scuolafutura.pubblica.istruzione.it/codeweek22/');
                            if (await canLaunchUrl(uri)) {
                              launchUrl(uri);
                            }
                          },
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      EasyRichTextPattern(
                        targetString:
                            'Come accendere e spegnere i puntini sulla livemap',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            final uri = Uri.parse(
                                'https://scuolafutura.pubblica.istruzione.it/codeweek22/linee-di-codice');
                            if (await canLaunchUrl(uri)) {
                              launchUrl(uri);
                            }
                          },
                      ),
                      EasyRichTextPattern(
                        targetString:
                            'Come contare le righe di codice prodotte durante le attività CodeWeek',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            final uri = Uri.parse(
                                'http://www.codeweek.it/wp-content/uploads/2022/09/line-of-code.pdf');
                            if (await canLaunchUrl(uri)) {
                              launchUrl(uri);
                            }
                          },
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Text(
                  //   'Copia il codice per includere la mappa',
                  //   style: Theme.of(context).textTheme.headline6?.copyWith(
                  //         color: const Color(0xFF249CC1),
                  //       ),
                  // ),
                  // const SizedBox(height: 16),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const SelectableText(iframeText),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {
                          Clipboard.setData(
                              const ClipboardData(text: iframeText));
                        },
                        child: const Text('Copia')),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Questa è la mappa che comparirà sul tuo sito',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 8),
                  // SizedBox(
                  //   width: 500,
                  //   height: 500,
                  //   child: Html(
                  //     anchorKey: staticAnchorKey,
                  //     data: iframeText,
                  //   ),
                  // ),
                  // WebView(
                  //   initialUrl: 'https://google.com',
                  //     javascriptMode:JavascriptMode.unrestricted
                  // ),
                  IFrameWidget(
                    src: 'https://livemap.codeweek.it/embed.html',
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
