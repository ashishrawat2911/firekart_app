import 'package:flutter/material.dart';
import 'package:fluttercommerce/presentation/features/dashboard/view/dashboard_screen.dart';

import '../../../../core/state_manager/state_view_manager.dart';
import '../../../../res/app_colors.dart';
import '../../../../res/string_constants.dart';
import '../../../../res/text_styles.dart';
import '../../cart/view/cart_screen.dart';
import '../../search/view/search_screen.dart';
import '../../view/account_screen.dart';
import '../state/home_state.dart';
import '../viewmodel/home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateManager<HomeScreenViewModel, HomeState>(
      onViewModelReady: (viewModel) {
        viewModel.init();
      },
      builder: (context, viewModel, state) {
        return Scaffold(
          body: const [
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
            onTap: viewModel.setBottomBarIndex,
            currentIndex: state.bottomIndex,
          ),
        );
      },
    );
  }
}
