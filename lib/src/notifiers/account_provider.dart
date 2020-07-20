import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttercommerce/src/models/account_details_model.dart';

class AccountProvider with ChangeNotifier {
  FirebaseUser _firebaseUser;

  FirebaseUser get firebaseUser => _firebaseUser;

  set firebaseUser(FirebaseUser value) {
    _firebaseUser = value;
    notifyListeners();
  }

  AccountDetails _accountDetails;

  AccountDetails get accountDetails => _accountDetails;

  set accountDetails(AccountDetails value) {
    _accountDetails = value;
    notifyListeners();
  }

  Address _addressSelected;

  Address get addressSelected => _addressSelected;

  set addressSelected(Address value) {
    _addressSelected = value;
    notifyListeners();
  }
}
