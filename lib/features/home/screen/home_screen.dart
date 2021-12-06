import 'package:flutter/material.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/app/res/text_styles.dart';
import 'package:fluttercommerce/features/app/state_manager/state_view_manager.dart';
import 'package:fluttercommerce/features/cart/screen/cart_screen.dart';
import 'package:fluttercommerce/features/home/bloc/home_cubit.dart';
import 'package:fluttercommerce/features/home/screen/dashboard_screen.dart';
import 'package:fluttercommerce/features/home/state/home_state.dart';

import '../../account/account/view/account_screen.dart';
import 'search_screen.dart';

class HomeScreen extends StateManagerWidget<HomeScreenCubit, HomeState> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  void initState(viewModel) {
    super.initState(viewModel);
    viewModel.init();
  }

  @override
  Widget buildView(BuildContext context, HomeScreenCubit viewModel, HomeState state) {
    return Scaffold(
      body: [
        const DashboardScreen(),
        const SearchItemScreen(),
        const CartScreen(),
        const AccountScreen(),
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
                  const Center(child: Icon(Icons.shopping_cart)),
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
                            style: AppTextStyles.t10,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              title: const Text(StringsConstants.cart)),
          const BottomNavigationBarItem(icon: Icon(Icons.person), title: Text(StringsConstants.account)),
        ],
        onTap: (index) {
          viewModel.bottomBarIndex = index;
        },
        currentIndex: state.bottomIndex,
      ),
    );
  }
}
