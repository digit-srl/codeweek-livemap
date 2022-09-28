import 'package:flutter/foundation.dart';

const baseUrl = kDebugMode
    ? 'http://localhost:5003/codeweek-live-map/europe-west3'
    : 'https://europe-west3-codeweek-live-map.cloudfunctions.net';
const requestOtpCodeUrl = '$baseUrl/requestOtpCode';
const verifyOtpCodeUrl = '$baseUrl/verifyOtpCode';
const checkEventUrl = '$baseUrl/checkEventUrl';
