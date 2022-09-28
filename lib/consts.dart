import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Palette {
  static const activeEvent = Color(0xFFFA6825);
  static const endEvent = Color(0x66000000);

}

const baseUrl = kDebugMode
    ? 'http://localhost:5003/codeweek-live-map/europe-west3'
    : 'https://europe-west3-codeweek-live-map.cloudfunctions.net';
const requestOtpCodeUrl = '$baseUrl/requestOtpCode';
const verifyOtpCodeUrl = '$baseUrl/verifyOtpCode';
const checkEventUrl = '$baseUrl/checkEventUrl';
