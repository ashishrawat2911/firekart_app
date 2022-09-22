import 'package:flutter/material.dart';

import '../features/cart/view/cart_screen.dart';
import '../features/dashboard/view/dashboard_screen.dart';
import '../features/search/view/search_screen.dart';
import '../features/view/account_screen.dart';

class _TabScreen<T> extends StatelessWidget {
  const _TabScreen({Key? key, required this.screen}) : super(key: key);

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return screen;
  }
}

class DashBoardScreenTab extends _TabScreen {
  const DashBoardScreenTab({Key? key}) : super(key: key, screen: const DashboardScreen());
}

class CartScreenTab extends _TabScreen {
  const CartScreenTab({Key? key}) : super(key: key, screen: const CartScreen());
}

class AccountScreenTab extends _TabScreen {
  const AccountScreenTab({Key? key}) : super(key: key, screen: const AccountScreen());
}

class SearchItemScreenTab extends _TabScreen {
  const SearchItemScreenTab({Key? key}) : super(key: key, screen: const SearchItemScreen());
}
