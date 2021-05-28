import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AuthRepository {
  var firebaseAuth = FirebaseAuth.instance;

  Future<bool> sendCode(
    String phoneNumber, {
    @required PhoneVerificationCompleted verificationCompleted,
    @required PhoneVerificationFailed verificationFailed,
    @required PhoneCodeSent codeSent,
    @required PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout,
  }) async {
    try {
      return firebaseAuth
          .verifyPhoneNumber(
              phoneNumber: phoneNumber,
              timeout: Duration(seconds: 60),
              verificationCompleted: verificationCompleted,
              verificationFailed: verificationFailed,
              codeSent: codeSent,
              codeAutoRetrievalTimeout: codeAutoRetrievalTimeout)
          .then((value) {
        return true;
      }).catchError((e) {
        return false;
      });
    } on PlatformException {
      return false;
    }
  }

  setAccountDetails({String displayName, String photoUrl}) async {
    UserUpdateInfo updateInfo = UserUpdateInfo();
    updateInfo.displayName = displayName;
    updateInfo.photoUrl = photoUrl;
    (await getCurrentUser()).updateProfile(updateInfo);
  }

  Future<String> getUid() async {
    FirebaseUser user = await firebaseAuth.currentUser();
    return user.uid;
  }

  Future<String> getPhoneNumber() async {
    return (await firebaseAuth.currentUser()).phoneNumber;
  }

  Future<FirebaseUser> getCurrentUser() async {
    FirebaseUser user = await firebaseAuth.currentUser();
    return user;
  }

  Future<void> logoutUser() async {
    return firebaseAuth.signOut();
  }

  Future<bool> checkUserLoggedInStatus() async {
    try {
      FirebaseUser user = await getCurrentUser();
      if (user == null) {
        return false;
      } else
        return true;
    } catch (e) {
      return false;
    }
  }
}
