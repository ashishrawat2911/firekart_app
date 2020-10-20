import 'package:flutter/material.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/repository/auth_repository.dart';
import 'package:fluttercommerce/src/repository/firestore_repository.dart';
import 'package:fluttercommerce/src/routes/router.gr.dart';

class CheckStatusScreen extends StatefulWidget {
  final bool checkForAccountStatusOnly;

  CheckStatusScreen({this.checkForAccountStatusOnly = false});

  @override
  _CheckStatusScreenState createState() => _CheckStatusScreenState();
}

class _CheckStatusScreenState extends State<CheckStatusScreen> {
  @override
  void initState() {
    super.initState();
    checkStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 70,
          width: 70,
          child: CircularProgressIndicator(
            strokeWidth: 7,
          ),
        ),
      ),
    );
  }

  void checkStatus() async {
    var repo = AppInjector.get<AuthRepository>();
    var firebaseRepo = AppInjector.get<FirestoreRepository>();

    Future.delayed(Duration(seconds: widget.checkForAccountStatusOnly ? 2 : 0),
        () async {
      var status = await repo.checkUserLoggedInStatus();

      if (widget.checkForAccountStatusOnly || status) {
        var isUserDataPresent = await firebaseRepo.checkUserDetail();
        if (isUserDataPresent) {
          Navigator.of(context).pushReplacementNamed(Routes.mainHomeScreen);
        } else {
          Navigator.of(context).pushReplacementNamed(Routes.addUserDetailScreen,
              arguments: true);
        }
      } else {
        Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
      }
    });
  }
}
