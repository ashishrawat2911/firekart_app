import 'package:account/account.dart';
import 'package:checkout/checkout.dart';
import 'package:flutter/material.dart';
import 'package:intro/intro.dart';

class _TabScreen<T> extends StatelessWidget {
  const _TabScreen({Key? key, required this.screen}) : super(key: key);

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return screen;
  }
}

class DashBoardScreenTab extends _TabScreen {
  const DashBoardScreenTab({Key? key})
      : super(key: key, screen: const DashboardScreen());
}

class CartScreenTab extends _TabScreen {
  const CartScreenTab({Key? key}) : super(key: key, screen: const CartScreen());
}

class AccountScreenTab extends _TabScreen {
  const AccountScreenTab({Key? key})
      : super(key: key, screen: const AccountScreen());
}

class SearchItemScreenTab extends _TabScreen {
  const SearchItemScreenTab({Key? key})
      : super(key: key, screen: const SearchItemScreen());
}
