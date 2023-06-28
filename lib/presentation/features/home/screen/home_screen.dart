/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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
import 'package:flutter/material.dart';
import 'package:fluttercommerce/core/localization/localization.dart';
import 'package:fluttercommerce/core/state_manager/base_view.dart';
import 'package:fluttercommerce/core/theme/theme_provider.dart';
import 'package:fluttercommerce/presentation/features/dashboard/view/dashboard_screen.dart';

import '../../../res/colors.gen.dart';
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
          body: const [
            DashboardScreen(),
            SearchItemScreen(),
            CartScreen(),
            AccountScreen(),
          ][state.bottomIndex],
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
                              style: ThemeProvider.textTheme.labelSmall,
                            ),
                          ),
                        ),
                      ),
                    )
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
