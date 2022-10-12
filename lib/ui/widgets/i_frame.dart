import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class IFrameWidget extends StatefulWidget {
  final String src;

  const IFrameWidget({Key? key, required this.src}) : super(key: key);

  @override
  _IFrameWidgetState createState() => _IFrameWidgetState();
}

class _IFrameWidgetState extends State<IFrameWidget> {
  late Widget _iframe;

  final IFrameElement _iframeElement = IFrameElement();

  @override
  void initState() {
    super.initState();

    // _iframeElement.height = '800';
    _iframeElement.width = 'calc(100% - 20px)';

    _iframeElement.src = widget.src;
    // _iframeElement.src = 'https://livemap.codeweek.it';
    // _iframeElement.style.margin = '0';
    // _iframeElement.style.width = '100%';
    _iframeElement.style.border = 'none';
    // _iframeElement.style.border =
    //     'overflow: hidden; background-color: #f95c22; padding: 10px; border: solid 1px black';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );

    // ignore: undefined_prefixed_name
    // ui.platformViewRegistry.registerViewFactory('iframeElement', (int viewId) {
    //   final DivElement htmlElement = DivElement()
    //     // ..other props
    //     ..style.overflow = 'hidden'
    //     ..style.backgroundColor = '#f95c22'
    //     ..style.padding = '10px'
    //     ..style.border = 'solid 1px black'
    //     ..style.width = 'calc(100% - 20px)';
    //   return htmlElement;
    // });

    _iframe = HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      width: 500,
      child: _iframe,
    );
  }
}
