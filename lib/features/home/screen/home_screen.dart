import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/global_listener/global_listener.dart';
import 'package:fluttercommerce/features/app/view/base_screen.dart';
import 'package:fluttercommerce/features/cart/bloc/cart_status_bloc.dart';
import 'package:fluttercommerce/features/cart/screen/cart_screen.dart';
import 'package:fluttercommerce/features/common/models/cart_model.dart';
import 'package:fluttercommerce/features/home/bloc/home_cubit.dart';
import 'package:fluttercommerce/features/home/screen/dashboard_screen.dart';
import 'package:fluttercommerce/features/home/state/home_state.dart';
import 'package:fluttercommerce/features/order/bloc/account_details_cubit.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/app/res/text_styles.dart';

import 'search_screen.dart';
import '../../user/screen/account_screen.dart';

class HomeScreen extends BaseScreen<HomeScreenCubit, HomeState> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  void initState(bloc) {
    super.initState(bloc);
    bloc.init();
  }

  @override
  Widget buildView(BuildContext context, HomeScreenCubit bloc, HomeState state) {
    return Scaffold(
      body: [
        DashboardScreen(),
        SearchItemScreen(),
        CartScreen(),
        AccountScreen(),
      ][state.bottomIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //  backgroundColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.color81819A,
        selectedItemColor: AppColors.primaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), title: Text(StringsConstants.home)),
          const BottomNavigationBarItem(icon: Icon(Icons.search), title: Text(StringsConstants.search)),
          BottomNavigationBarItem(
              icon: Stack(
                children: <Widget>[
                  Center(child: Icon(Icons.shopping_cart)),
                  Visibility(
                    visible: state.noOfItemsInCart > 0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          minRadius: 7,
                          maxRadius: 7,
                          backgroundColor: AppColors.color6EBA49,
                          child: Text(
                            "${state.noOfItemsInCart}",
                            style: AppTextStyles.normal9White,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              title: Text(StringsConstants.cart)),
          BottomNavigationBarItem(icon: const Icon(Icons.person), title: Text(StringsConstants.account)),
        ],
        onTap: (index) {
          bloc.bottomBarIndex = index;
        },
        currentIndex: state.bottomIndex,
      ),
    );
  }
}
