import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/app/repo/auth_repository.dart';
import 'package:fluttercommerce/features/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/features/checkout/bloc/cart_status_bloc.dart';
import 'package:fluttercommerce/features/checkout/screen/cart_screen.dart';
import 'package:fluttercommerce/features/common/models/cart_model.dart';
import 'package:fluttercommerce/features/home/bloc/bottom_bar_cubit.dart';
import 'package:fluttercommerce/features/home/screen/home_page.dart';
import 'package:fluttercommerce/features/order/bloc/account_details_cubit.dart';
import 'package:fluttercommerce/res/app_colors.dart';
import 'package:fluttercommerce/res/string_constants.dart';
import 'package:fluttercommerce/res/text_styles.dart';
import 'package:fluttercommerce/di/di.dart';

import '../../search/screen/SearchScreen.dart';
import '../../user/screen/account_screen.dart';

class MainHomeScreen extends StatefulWidget {
  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  var bottomBarCubit = DI.container<BottomBarCubit>();
  var firebaseRepo = DI.container<FirestoreRepository>();
  var authRepo = DI.container<AuthRepository>();
  var cartStatusCubit = DI.container<CartStatusCubit>();
  var accountDetailsCubit = DI.container<AccountDetailsCubit>();

  @override
  void initState() {
    super.initState();
    listenToCartValues();
    listenToAccountDetails();
  }

  listenToCartValues() async {
    firebaseRepo.cartStatusListen(await authRepo.getUid()).listen((event) {
      var noOfItemsInCart = event?.documents?.length ?? 0;
      if (noOfItemsInCart > 0) {
        cartStatusCubit.cartItems =
            List<CartModel>.generate(event?.documents?.length ?? 0, (index) {
          DocumentSnapshot documentSnapshot = event.documents[index];
          return CartModel.fromJson(documentSnapshot);
        });
      }
      // else {
      //   cartStatusCubit.cartItems = [];
      // }
    });
  }

  void listenToAccountDetails() async {
    firebaseRepo.streamUserDetails(await authRepo.getUid()).listen((event) {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarCubit, int>(
      bloc : bottomBarCubit,
      builder: (context, state) {
        return Scaffold(
          body: [
            HomePageScreen(),
            SearchItemScreen(),
            CartScreen(),
            AccountScreen(),
          ][state],
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
                      BlocBuilder<CartStatusCubit, List<CartModel>>(
                        bloc : cartStatusCubit,
                        builder: (context, state) {
                          return Visibility(
                            visible: cartStatusCubit.noOfItemsInCart > 0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Align(
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                  minRadius: 7,
                                  maxRadius: 7,
                                  backgroundColor: AppColors.color6EBA49,
                                  child: Text(
                                    "${cartStatusCubit.noOfItemsInCart}",
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
              bottomBarCubit.bottomBarIndex = index;
            },
            currentIndex: state,
          ),
        );
      },
    );
  }
}
