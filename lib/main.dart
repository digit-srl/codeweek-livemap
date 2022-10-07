import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'app.dart';
import 'application/map_stream.dart';
import 'firebase_options.dart';


// fvm flutter build web --web-renderer canvaskit
// firebase deploy --only hosting
// firebase deploy --only functions:onUserCheckIn
// firebase hosting:channel:deploy preview_name
// fvm flutter build apk
// firebase emulators:start --import=./emulator_backup --export-on-exit
// lsof -i tcp:8082

late String mapStyle;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  usePathUrlStrategy();

  fiaccolaPin = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(), 'assets/fiaccola.png');
  livePin = await getCustomPinWithBorder(20);
  offPin = await getCustomPinWithBorder(20,
      baseColor: Colors.black.withOpacity(0.4));

  if (kDebugMode) {
    // final d = "localhost";
    // FirebaseFirestore.instance.useFirestoreEmulator(d, 8082);
  }
  rootBundle.loadString('assets/map_style.txt').then((s) {
    mapStyle = s;
  });
  runApp(const ProviderScope(child: CWLivaMapApp()));
}


