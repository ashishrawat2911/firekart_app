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
import 'package:localization/localization.dart';
import 'package:core/state_manager/base_view.dart';

import 'package:presentation/features/dashboard/view/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:assets/res/app_theme.dart';

import 'package:assets/res/colors.gen.dart';
import '../../accounts/view/account_screen.dart';
import '../../cart/view/cart_screen.dart';
import '../../search/view/search_screen.dart';
import '../state/home_state.dart';
import '../viewmodel/home_viewmodel.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeScreenViewModel, HomeState>(
      onViewModelReady: (viewModel) {
        viewModel.init();
      },
      builder: (context, viewModel, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.bottomIndex,
            children: const [
              DashboardScreen(),
              SearchItemScreen(),
              CartScreen(),
              AccountScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            // showSelectedLabels: true,
            // showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: Localization.value.home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.search),
                label: Localization.value.search,
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  children: <Widget>[
                    const Center(child: Icon(Icons.shopping_cart)),
                    Visibility(
                      visible: state.noOfItemsInCart > 0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Align(
                          child: CircleAvatar(
                            minRadius: 7,
                            maxRadius: 7,
                            backgroundColor: AppColors.color6EBA49,
                            child: Text(
                              '${state.noOfItemsInCart}',
                              style: context.textTheme.labelSmall,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                label: Localization.value.cart,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.person),
                label: Localization.value.account,
              ),
            ],
            onTap: viewModel.setBottomBarIndex,
            currentIndex: state.bottomIndex,
          ),
        );
      },
    );
  }
}
