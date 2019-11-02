import 'collection.dart';
import 'document.dart';
import 'firebase_app.dart';

import '../interface.dart' as intf;
import 'package:cloud_firestore/cloud_firestore.dart' as mobile;

class Firestore implements intf.Firestore {
  mobile.Firestore _firestore;
  Firestore(this._firestore);

  FirebaseApp get app => FirebaseApp(_firestore.app);

  CollectionReference collection(String path) =>
      CollectionReference(_firestore.collection(path));
  DocumentReference document(String path) =>
      DocumentReference(_firestore.document(path));
}
