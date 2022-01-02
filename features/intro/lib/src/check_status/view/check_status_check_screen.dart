import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intro/src/check_status/view_model/check_status_bloc.dart';

class CheckStatusScreen extends StatefulWidget {
  const CheckStatusScreen({Key? key, this.checkForAccountStatusOnly = false})
      : super(key: key);

  final bool checkForAccountStatusOnly;

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
