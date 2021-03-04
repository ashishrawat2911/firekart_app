import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/models/account_details_model.dart';
import 'package:fluttercommerce/src/models/cartModel_model.dart';
import 'package:fluttercommerce/src/notifiers/account_provider.dart';
import 'package:fluttercommerce/src/notifiers/cart_status_provider.dart';
import 'package:fluttercommerce/src/notifiers/main_screen_provider.dart';
import 'package:fluttercommerce/src/notifiers/provider_notifier.dart';
import 'package:fluttercommerce/src/repository/auth_repository.dart';
import 'package:fluttercommerce/src/repository/firestore_repository.dart';
import 'package:fluttercommerce/src/res/app_colors.dart';
import 'package:fluttercommerce/src/res/string_constants.dart';
import 'package:fluttercommerce/src/res/text_styles.dart';
import 'package:fluttercommerce/src/ui/screens/cart_screen.dart';
import 'package:fluttercommerce/src/ui/screens/home_page.dart';

import 'SearchScreen.dart';
import 'account_screen.dart';

class MainHomeScreen extends StatefulWidget {
  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  var mainScreenProvider = AppInjector.get<MainScreenProvider>();
  var firebaseRepo = AppInjector.get<FirestoreRepository>();
  var authRepo = AppInjector.get<AuthRepository>();
  var cartStatusProvider = AppInjector.get<CartStatusProvider>();
  var accountProvider = AppInjector.get<AccountProvider>();
  @override
  void initState() {
    super.initState();
    listenToCartValues();
    listenToAccountDetails();
  }

  listenToCartValues() async {
    firebaseRepo!.cartStatusListen(await authRepo!.getUid()).listen((event) {
      var noOfItemsInCart = event?.documents?.length ?? 0;
      if (noOfItemsInCart > 0) {
        cartStatusProvider!.cartItems =
            List<CartModel>.generate(event?.documents?.length ?? 0, (index) {
          DocumentSnapshot documentSnapshot = event.documents[index];
          return CartModel.fromJson(documentSnapshot);
        });
      } else {
        cartStatusProvider!.cartItems = [];
      }
    });
  }

  void listenToAccountDetails() async {
//    accountProvider.firebaseUser = await authRepo.getCurrentUser();
    firebaseRepo!.streamUserDetails(await authRepo!.getUid()).listen((event) {
      AccountDetails accountDetails = AccountDetails.fromDocument(event);
      accountDetails.addresses = accountDetails.addresses!.reversed.toList();

      Address? address;
      List.generate(accountDetails.addresses!.length, (index) {
        Address add = accountDetails.addresses![index];
        if (add.isDefault!) {
          address = add;
        }
      });
      if (address == null && accountDetails.addresses!.isNotEmpty) {
        address = accountDetails.addresses![0];
        accountProvider!.addressSelected = address;
      } else {
        accountProvider!.addressSelected = address;
      }
      accountProvider!.accountDetails = accountDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ProviderNotifier<MainScreenProvider>(
      child: (MainScreenProvider mainScreenProvider) {
        return Scaffold(
          body: [
            HomePageScreen(),
            SearchItemScreen(),
            CartScreen(),
            AccountScreen(),
          ][mainScreenProvider.bottomBarIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            //  backgroundColor: AppColors.primaryColor,
            unselectedItemColor: AppColors.color81819A,
            selectedItemColor: AppColors.primaryColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text(StringsConstants.home)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text(StringsConstants.search)),
              BottomNavigationBarItem(
                  icon: Stack(
                    children: <Widget>[
                      Center(child: Icon(Icons.shopping_cart)),
                      ProviderNotifier<CartStatusProvider>(
                        child: (CartStatusProvider value) {
                          return Visibility(
                            visible: value.noOfItemsInCart > 0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Align(
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                  minRadius: 7,
                                  maxRadius: 7,
                                  backgroundColor: AppColors.color6EBA49,
                                  child: Text(
                                    "${value.noOfItemsInCart}",
                                    style: AppTextStyles.normal9White,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                  title: Text(StringsConstants.cart)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text(StringsConstants.account)),
            ],
            onTap: (index) {
              mainScreenProvider.bottomBarIndex = index;
            },
            currentIndex: mainScreenProvider.bottomBarIndex,
          ),
        );
      },
    );
  }
}
