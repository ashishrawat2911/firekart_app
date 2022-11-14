import 'package:flutter/material.dart';
import 'package:fluttercommerce/core/localization/localization.dart';

import '../../../../di/di.dart';
import '../../../../domain/models/account_details_model.dart';
import '../../../../domain/usecases/logout_usecase.dart';
import '../../../../domain/usecases/stream_account_details_usecase.dart';
import '../../../res/string_constants.dart';
import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';
import '../../../widgets/action_text.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  AccountDetails? accountDetails;

  @override
  void initState() {
    super.initState();
    inject<StreamAccountDetailsUseCaseUseCase>().execute().listen((event) {
      setState(() {
        accountDetails = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (accountDetails == null)
                      Container()
                    else
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            accountDetails!.name,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            accountDetails!.phoneNumber ?? '',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    ActionText(
                      Localization.value.editCaps,
                      onTap: () {
                        NavigationHandler.navigateTo(
                            AddUserDetailScreenRoute(newAddress: false));
                      },
                    ),
                  ],
                ),
              ),
              const Divider(),
              ListTile(
                title:  Text(Localization.value.myOrders),
                leading: const Icon(Icons.shopping_basket),
                onTap: () {
                  NavigationHandler.navigateTo(const MyOrdersScreenRoute());
                },
              ),
              ListTile(
                title:  Text(Localization.value.myAddress),
                leading: const Icon(Icons.place),
                onTap: () {
                  NavigationHandler.navigateTo(MyAddressScreenRoute());
                },
              ),
              const Divider(),
              ListTile(
                title:  Text(Localization.value.logout),
                leading: const Icon(Icons.exit_to_app),
                onTap: () {
                  inject<LogoutUseCase>().execute().then((value) {
                    NavigationHandler.navigateTo(
                      const LoginScreenRoute(),
                      navigationType: NavigationType.pushAndPopUntil,
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
