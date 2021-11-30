import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/app/res/text_styles.dart';
import 'package:fluttercommerce/features/app/navigation/navigation_handler.dart';
import 'package:fluttercommerce/features/app/navigation/app_router.gr.dart';
import 'package:fluttercommerce/features/common/widgets/action_text.dart';
import 'package:fluttercommerce/features/order/bloc/account_details_cubit.dart';
import 'package:fluttercommerce/features/order/state/account_details_state.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  var accountDetailsCubit = DI.container<AccountDetailsCubit>();

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
                      BlocBuilder<AccountDetailsCubit, AccountDetailsState>(
                        bloc: accountDetailsCubit,
                        builder: (context, accountDetailState) {
                          if (accountDetailState.accountDetails == null) return Container();
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                accountDetailState.accountDetails!.name,
                                style: AppTextStyles.medium22Black,
                              ),
                              Text(
                                accountDetailState.accountDetails!.phoneNumber??'',
                                style: AppTextStyles.normal14Color4C4C6F,
                              ),
                            ],
                          );
                        },
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
