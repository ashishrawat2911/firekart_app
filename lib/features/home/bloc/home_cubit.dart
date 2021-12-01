import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/global_listener/global_listener.dart';
import 'package:fluttercommerce/features/app/state_manager/state_manager.dart';
import 'package:fluttercommerce/features/cart/bloc/cart_status_bloc.dart';
import 'package:fluttercommerce/features/common/models/cart_model.dart';
import 'package:fluttercommerce/features/home/state/home_state.dart';
import 'package:fluttercommerce/features/order/bloc/account_details_cubit.dart';

class HomeScreenCubit extends StateManager<HomeState> {
  HomeScreenCubit(this.firebaseRepo, this.globalListener) : super(const HomeState());

  final FirebaseManager firebaseRepo;
  final GlobalListener globalListener;

  void init() {
    refreshListeners();
  }

  set bottomBarIndex(int value) {
    state = state.copyWith(bottomIndex: value);
  }

  Future<void> refreshListeners() async {
    firebaseRepo.streamUserDetails(firebaseRepo.getUid()).listen((event) {
      globalListener.refreshListener(
        GlobalListenerConstants.accountDetails,
        '',
      );
    });

    firebaseRepo.cartStatusListen(firebaseRepo.getUid()).listen((event) {
      final noOfItemsInCart = event.docs.length;
      state = state.copyWith(noOfItemsInCart: noOfItemsInCart);
      if (noOfItemsInCart > 0) {
        globalListener.refreshListener<List<CartModel>>(
          GlobalListenerConstants.cartItems,
          List<CartModel>.generate(event.docs.length, (index) {
            final DocumentSnapshot documentSnapshot = event.docs[index];
            return CartModel.fromJson(documentSnapshot.data());
          }),
        );
      }
    });
  }
}
