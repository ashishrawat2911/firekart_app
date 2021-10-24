import 'package:fluttercommerce/modules/app/repo/auth_repository.dart';
import 'package:fluttercommerce/modules/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/modules/checkout/bloc/add_to_cart_cubit.dart';
import 'package:fluttercommerce/modules/checkout/bloc/cart_item_cubit.dart';
import 'package:fluttercommerce/modules/checkout/bloc/cart_status_bloc.dart';
import 'package:fluttercommerce/modules/checkout/bloc/payment_cubit.dart';
import 'package:fluttercommerce/modules/checkout/bloc/place_order_cubit.dart';
import 'package:fluttercommerce/modules/module.dart';
import 'package:fluttercommerce/di/di.dart';

class CheckoutModule extends Module {
  @override
  void registerDependencies() {
    final firebaseRepo = DI.container<FirestoreRepository>();
    final authRepo = DI.container<AuthRepository>();
    DI.container
      ..registerFactory(() => AddToCartCubit(firebaseRepo, authRepo))
      ..registerFactory(() => CartItemCubit(firebaseRepo))
      ..registerLazySingleton(() => CartStatusCubit())
      ..registerFactory(() => PaymentCubit())
      ..registerFactory(() => PlaceOrderCubit(firebaseRepo));
  }
}
