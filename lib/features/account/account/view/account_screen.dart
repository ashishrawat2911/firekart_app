import 'package:flutter/material.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/global_listener/global_listener.dart';
import 'package:fluttercommerce/features/app/navigation/app_router.gr.dart';
import 'package:fluttercommerce/features/app/navigation/navigation_handler.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/app/res/text_styles.dart';
import 'package:fluttercommerce/features/common/models/account_details_model.dart';
import 'package:fluttercommerce/features/common/widgets/action_text.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  AccountDetails? accountDetails;

  @override
  void initState() {
    super.initState();
    DI.container<GlobalListener>().listen<AccountDetails>(GlobalListenerConstants.accountDetails, (event) {
      setState(() {
        accountDetails = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16, top: 20),
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
                              style: AppTextStyles.t33,
                            ),
                            Text(
                              accountDetails!.phoneNumber ?? '',
                              style: AppTextStyles.t28,
                            ),
                          ],
                        ),
                      SizedBox(
                        height: 10,
                      ),
                      ActionText(
                        StringsConstants.editCaps,
                        onTap: () {
                          NavigationHandler.navigateTo(AddUserDetailScreenRoute(newAddress: false));
                        },
                      ),
                    ],
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(StringsConstants.myOrders),
                  leading: Icon(Icons.shopping_basket),
                  onTap: () {
                    NavigationHandler.navigateTo(MyOrdersScreenRoute());
                  },
                ),
                ListTile(
                  title: Text(StringsConstants.myAddress),
                  leading: Icon(Icons.place),
                  onTap: () {
                    NavigationHandler.navigateTo(MyAddressScreenRoute());
                  },
                ),
                Divider(),
                ListTile(
                  title: Text(StringsConstants.logout),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {
                    DI.container<FirebaseManager>().logoutUser().then((value) {
                      NavigationHandler.navigateTo(LoginScreenRoute(),
                          navigationType: NavigationType.PushAndPopUntil, predicate: (route) => false);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
