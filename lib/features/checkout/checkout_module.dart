import 'package:fluttercommerce/features/app/repo/auth_repository.dart';
import 'package:fluttercommerce/features/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/features/checkout/bloc/add_to_cart_cubit.dart';
import 'package:fluttercommerce/features/checkout/bloc/cart_item_cubit.dart';
import 'package:fluttercommerce/features/checkout/bloc/cart_status_bloc.dart';
import 'package:fluttercommerce/features/checkout/bloc/payment_cubit.dart';
import 'package:fluttercommerce/features/checkout/bloc/place_order_cubit.dart';
import 'package:fluttercommerce/features/module.dart';
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
