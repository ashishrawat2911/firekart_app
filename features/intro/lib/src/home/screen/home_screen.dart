import 'package:account/account.dart';
import 'package:checkout/checkout.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intro/src/home/bloc/home_cubit.dart';
import 'package:intro/src/home/screen/dashboard_screen.dart';
import 'package:intro/src/home/state/home_state.dart';

import 'search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateBuilder<HomeScreenCubit, HomeState>(
      onViewModelReady: (viewModel) {
        viewModel.init();
      },
      builder: (context, viewModel, state) => Scaffold(
        body: [
          //TODO do tight coupling and remove features from pub
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
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: (StringsConstants.home)),
            const BottomNavigationBarItem(icon: Icon(Icons.search), label: (StringsConstants.search)),
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
                label: (StringsConstants.cart)),
            const BottomNavigationBarItem(icon: Icon(Icons.person), label: (StringsConstants.account)),
          ],
          onTap: (index) {
            viewModel.bottomBarIndex = index;
          },
          currentIndex: state.bottomIndex,
        ),
      ),
    );
  }
}
