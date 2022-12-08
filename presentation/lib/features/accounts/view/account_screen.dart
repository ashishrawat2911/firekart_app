import 'package:core/di/di.dart';
import 'package:domain/models/account_details_model.dart';
import 'package:domain/usecases/logout_usecase.dart';
import 'package:domain/usecases/stream_account_details_usecase.dart';
import 'package:flutter/material.dart';


import 'package:core/theme/theme_provider.dart';
import 'package:localization/localization.dart';
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
  Widget build(BuildContext context) => Scaffold(
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
                              style: ThemeProvider.textTheme.headline1,
                            ),
                            Text(
                              accountDetails!.phoneNumber ?? '',
                              style: ThemeProvider.textTheme.caption,
                            ),
                          ],
                        ),
                      const SizedBox(
                        height: 10,
                      ),
                      ActionText(
                        Localization.value.editCaps,
                        onTap: () {
                          NavigationHandler.navigateTo<void>(
                              AddUserDetailScreenRoute(newAddress: false));
                        },
                      ),
                    ],
                  ),
                ),
                const Divider(),
                ListTile(
                  title: Text(
                    Localization.value.myOrders,
                    style: ThemeProvider.textTheme.bodyText2,
                  ),
                  leading: const Icon(Icons.shopping_basket),
                  onTap: () {
                    NavigationHandler.navigateTo<void>(
                        const MyOrdersScreenRoute());
                  },
                ),
                ListTile(
                  title: Text(
                    Localization.value.myAddress,
                    style: ThemeProvider.textTheme.bodyText2,
                  ),
                  leading: const Icon(Icons.place),
                  onTap: () {
                    NavigationHandler.navigateTo<void>(MyAddressScreenRoute());
                  },
                ),
                const Divider(),
                ListTile(
                  title: Text(Localization.value.logout,
                      style: ThemeProvider.textTheme.bodyText2),
                  leading: const Icon(Icons.exit_to_app),
                  onTap: () {
                    inject<LogoutUseCase>().execute().then((value) {
                      NavigationHandler.navigateTo<void>(
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
