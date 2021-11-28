import 'package:flutter/material.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/init/bloc/check_status_bloc.dart';

class CheckStatusScreen extends StatefulWidget {
  final bool checkForAccountStatusOnly;

  const CheckStatusScreen({this.checkForAccountStatusOnly = false});

  @override
  _CheckStatusScreenState createState() => _CheckStatusScreenState();
}

class _CheckStatusScreenState extends State<CheckStatusScreen> {
  final checkStatusBloc = DI.container<CheckStatusBloc>();

  @override
  void initState() {
    super.initState();
    checkStatusBloc.checkStatus(widget.checkForAccountStatusOnly);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
}
