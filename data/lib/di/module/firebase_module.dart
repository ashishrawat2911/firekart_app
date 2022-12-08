import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DataModule {
  @singleton
  FirebaseFirestore get firebaseFireStore => FirebaseFirestore.instance;

  @singleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
}
