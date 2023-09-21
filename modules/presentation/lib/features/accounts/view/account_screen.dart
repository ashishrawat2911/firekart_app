/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:auto_route/annotations.dart';
import 'package:core/di/di.dart';
import 'package:localization/localization.dart';

import 'package:domain/models/account_details_model.dart';
import 'package:domain/usecases/logout_usecase.dart';
import 'package:domain/usecases/stream_account_details_usecase.dart';
import 'package:flutter/material.dart';
import 'package:assets/res/app_theme.dart';

import '../../../routes/app_router.gr.dart';
import '../../../routes/route_handler.dart';
import '../../../widgets/action_text.dart';

@RoutePage()
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
    inject<StreamAccountDetailsUseCaseUseCase>().execute().then((value) {
      value.forEach((r) {
        setState(() {
          accountDetails = r;
        });
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
                              style: context.textTheme.displayLarge,
                            ),
                            Text(
                              accountDetails!.phoneNumber,
                              style: context.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      const SizedBox(
                        height: 10,
                      ),
                      ActionText(
                        Localization.value.editCaps,
                        onTap: () {
                          RouteHandler.routeTo(
                            AddUserDetailRoute(newAddress: false),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const Divider(),
                ListTile(
                  title: Text(
                    Localization.value.myOrders,
                    style: context.textTheme.bodyMedium,
                  ),
                  leading: const Icon(Icons.shopping_basket),
                  onTap: () {
                    RouteHandler.routeTo(const MyOrdersRoute());
                  },
                ),
                ListTile(
                  title: Text(
                    Localization.value.myAddress,
                    style: context.textTheme.bodyMedium,
                  ),
                  leading: const Icon(Icons.place),
                  onTap: () {
                    RouteHandler.routeTo(MyAddressRoute());
                  },
                ),
                const Divider(),
                ListTile(
                  title: Text(
                    Localization.value.logout,
                    style: context.textTheme.bodyMedium,
                  ),
                  leading: const Icon(Icons.exit_to_app),
                  onTap: () {
                    inject<LogoutUseCase>().execute().then((value) {
                      RouteHandler.routeTo(
                        const LoginRoute(),
                        routingType: RoutingType.pushAndPopUntil,
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
