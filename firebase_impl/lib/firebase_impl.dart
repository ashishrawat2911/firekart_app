library firebase_impl;

import 'package:firebase_core/firebase_core.dart';
export 'package:firebase_auth/firebase_auth.dart';
export 'package:cloud_firestore/cloud_firestore.dart';

Future<void> initializeFirebase() async {
  await Firebase.initializeApp();
}
