import 'package:cloud_firestore/cloud_firestore.dart';
class Cloud {
  static CollectionReference<Map<String, dynamic>> eventCollection =
      FirebaseFirestore.instance.collection('events');

  static DocumentReference<Map<String, dynamic>> eventDoc(String eventId) =>
      eventCollection.doc(eventId);
  static DocumentReference<Map<String, dynamic>> get statsDoc =>
      FirebaseFirestore.instance.collection('stats').doc('status');

}
