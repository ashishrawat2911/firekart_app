// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:domain/models/account_details_model.dart' as _i18;
import 'package:flutter/foundation.dart' as _i19;
import 'package:flutter/material.dart' as _i17;
import 'package:presentation/features/accounts/view/account_screen.dart' as _i1;
import 'package:presentation/features/add_account_detail/view/add_user_detail_screen.dart'
    as _i3;
import 'package:presentation/features/add_address/view/add_address_screen.dart'
    as _i2;
import 'package:presentation/features/cart/view/cart_screen.dart' as _i5;
import 'package:presentation/features/check_status/view/check_status_check_screen.dart'
    as _i6;
import 'package:presentation/features/dashboard/view/dashboard_screen.dart'
    as _i7;
import 'package:presentation/features/home/screen/home_screen.dart' as _i8;
import 'package:presentation/features/my_address/view/my_address_screen.dart'
    as _i10;
import 'package:presentation/features/order/view/my_orders_screen.dart' as _i11;
import 'package:presentation/features/otp_login/view/otp_login_screen.dart'
    as _i12;
import 'package:presentation/features/phone_login/view/phone_login_screen.dart'
    as _i9;
import 'package:presentation/features/product_detail/view/product_detail_page.dart'
    as _i13;
import 'package:presentation/features/product_list/view/all_product_list_screen.dart'
    as _i4;
import 'package:presentation/features/search/view/search_screen.dart' as _i14;
import 'package:presentation/features/splash/view/splash_screen.dart' as _i15;

abstract class $AppRouter extends _i16.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountScreen(),
      );
    },
    AddAddressRoute.name: (routeData) {
      final args = routeData.argsAs<AddAddressRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AddAddressScreen(
          args.newAddress,
          key: args.key,
          editAddress: args.editAddress,
        ),
      );
    },
    AddUserDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AddUserDetailRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AddUserDetailScreen(
          args.newAddress,
          key: args.key,
        ),
      );
    },
    AllProductListRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AllProductListScreen(),
      );
    },
    CartRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CartScreen(),
      );
    },
    CheckStatusRoute.name: (routeData) {
      final args = routeData.argsAs<CheckStatusRouteArgs>(
          orElse: () => const CheckStatusRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.CheckStatusScreen(
          key: args.key,
          checkForAccountStatusOnly: args.checkForAccountStatusOnly,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.DashboardScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LoginScreen(),
      );
    },
    MyAddressRoute.name: (routeData) {
      final args = routeData.argsAs<MyAddressRouteArgs>(
          orElse: () => const MyAddressRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.MyAddressScreen(
          key: args.key,
          selectedAddress: args.selectedAddress,
        ),
      );
    },
    MyOrdersRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.MyOrdersScreen(),
      );
    },
    OtpLoginRoute.name: (routeData) {
      final args = routeData.argsAs<OtpLoginRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.OtpLoginScreen(
          phoneNumber: args.phoneNumber,
          key: args.key,
        ),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.ProductDetailPage(
          args.productId,
          key: args.key,
        ),
      );
    },
    SearchItemRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SearchItemScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i16.PageRouteInfo<void> {
  const AccountRoute({List<_i16.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddAddressScreen]
class AddAddressRoute extends _i16.PageRouteInfo<AddAddressRouteArgs> {
  AddAddressRoute({
    required bool newAddress,
    _i17.Key? key,
    _i18.Address? editAddress,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          AddAddressRoute.name,
          args: AddAddressRouteArgs(
            newAddress: newAddress,
            key: key,
            editAddress: editAddress,
          ),
          initialChildren: children,
        );

  static const String name = 'AddAddressRoute';

  static const _i16.PageInfo<AddAddressRouteArgs> page =
      _i16.PageInfo<AddAddressRouteArgs>(name);
}

class AddAddressRouteArgs {
  const AddAddressRouteArgs({
    required this.newAddress,
    this.key,
    this.editAddress,
  });

  final bool newAddress;

  final _i17.Key? key;

  final _i18.Address? editAddress;

  @override
  String toString() {
    return 'AddAddressRouteArgs{newAddress: $newAddress, key: $key, editAddress: $editAddress}';
  }
}

/// generated route for
/// [_i3.AddUserDetailScreen]
class AddUserDetailRoute extends _i16.PageRouteInfo<AddUserDetailRouteArgs> {
  AddUserDetailRoute({
    required bool newAddress,
    _i17.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          AddUserDetailRoute.name,
          args: AddUserDetailRouteArgs(
            newAddress: newAddress,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AddUserDetailRoute';

  static const _i16.PageInfo<AddUserDetailRouteArgs> page =
      _i16.PageInfo<AddUserDetailRouteArgs>(name);
}

class AddUserDetailRouteArgs {
  const AddUserDetailRouteArgs({
    required this.newAddress,
    this.key,
  });

  final bool newAddress;

  final _i17.Key? key;

  @override
  String toString() {
    return 'AddUserDetailRouteArgs{newAddress: $newAddress, key: $key}';
  }
}

/// generated route for
/// [_i4.AllProductListScreen]
class AllProductListRoute extends _i16.PageRouteInfo<void> {
  const AllProductListRoute({List<_i16.PageRouteInfo>? children})
      : super(
          AllProductListRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllProductListRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CartScreen]
class CartRoute extends _i16.PageRouteInfo<void> {
  const CartRoute({List<_i16.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CheckStatusScreen]
class CheckStatusRoute extends _i16.PageRouteInfo<CheckStatusRouteArgs> {
  CheckStatusRoute({
    _i17.Key? key,
    bool checkForAccountStatusOnly = false,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          CheckStatusRoute.name,
          args: CheckStatusRouteArgs(
            key: key,
            checkForAccountStatusOnly: checkForAccountStatusOnly,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckStatusRoute';

  static const _i16.PageInfo<CheckStatusRouteArgs> page =
      _i16.PageInfo<CheckStatusRouteArgs>(name);
}

class CheckStatusRouteArgs {
  const CheckStatusRouteArgs({
    this.key,
    this.checkForAccountStatusOnly = false,
  });

  final _i17.Key? key;

  final bool checkForAccountStatusOnly;

  @override
  String toString() {
    return 'CheckStatusRouteArgs{key: $key, checkForAccountStatusOnly: $checkForAccountStatusOnly}';
  }
}

/// generated route for
/// [_i7.DashboardScreen]
class DashboardRoute extends _i16.PageRouteInfo<void> {
  const DashboardRoute({List<_i16.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HomeScreen]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginScreen]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute({List<_i16.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MyAddressScreen]
class MyAddressRoute extends _i16.PageRouteInfo<MyAddressRouteArgs> {
  MyAddressRoute({
    _i17.Key? key,
    bool selectedAddress = false,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          MyAddressRoute.name,
          args: MyAddressRouteArgs(
            key: key,
            selectedAddress: selectedAddress,
          ),
          initialChildren: children,
        );

  static const String name = 'MyAddressRoute';

  static const _i16.PageInfo<MyAddressRouteArgs> page =
      _i16.PageInfo<MyAddressRouteArgs>(name);
}

class MyAddressRouteArgs {
  const MyAddressRouteArgs({
    this.key,
    this.selectedAddress = false,
  });

  final _i17.Key? key;

  final bool selectedAddress;

  @override
  String toString() {
    return 'MyAddressRouteArgs{key: $key, selectedAddress: $selectedAddress}';
  }
}

/// generated route for
/// [_i11.MyOrdersScreen]
class MyOrdersRoute extends _i16.PageRouteInfo<void> {
  const MyOrdersRoute({List<_i16.PageRouteInfo>? children})
      : super(
          MyOrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyOrdersRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i12.OtpLoginScreen]
class OtpLoginRoute extends _i16.PageRouteInfo<OtpLoginRouteArgs> {
  OtpLoginRoute({
    required String phoneNumber,
    _i19.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          OtpLoginRoute.name,
          args: OtpLoginRouteArgs(
            phoneNumber: phoneNumber,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpLoginRoute';

  static const _i16.PageInfo<OtpLoginRouteArgs> page =
      _i16.PageInfo<OtpLoginRouteArgs>(name);
}

class OtpLoginRouteArgs {
  const OtpLoginRouteArgs({
    required this.phoneNumber,
    this.key,
  });

  final String phoneNumber;

  final _i19.Key? key;

  @override
  String toString() {
    return 'OtpLoginRouteArgs{phoneNumber: $phoneNumber, key: $key}';
  }
}

/// generated route for
/// [_i13.ProductDetailPage]
class ProductDetailRoute extends _i16.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    required int productId,
    _i17.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            productId: productId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const _i16.PageInfo<ProductDetailRouteArgs> page =
      _i16.PageInfo<ProductDetailRouteArgs>(name);
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    required this.productId,
    this.key,
  });

  final int productId;

  final _i17.Key? key;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{productId: $productId, key: $key}';
  }
}

/// generated route for
/// [_i14.SearchItemScreen]
class SearchItemRoute extends _i16.PageRouteInfo<void> {
  const SearchItemRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SearchItemRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchItemRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SplashScreen]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}
