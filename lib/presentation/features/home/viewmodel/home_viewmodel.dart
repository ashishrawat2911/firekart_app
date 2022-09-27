import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/global_listener/global_listener.dart';
import '../../../../core/res/global_listener_constants.dart';
import '../../../../core/state_manager/state_manager.dart';
import '../../../../data/firebase_manager/firestore_manager.dart';
import '../../../../data/models/account_details_model.dart';
import '../../../../data/models/cart_model.dart';
import '../state/home_state.dart';

@injectable
class HomeScreenViewModel extends StateManager<HomeState> {
  HomeScreenViewModel(this.firebaseRepo, this.globalListener) : super(const HomeState());

  final FirebaseRepository firebaseRepo;
  final GlobalListener globalListener;

  void init() {
    refreshListeners();
  }

  void setBottomBarIndex(int value) {
    state = state.copyWith(bottomIndex: value);
  }

  Future<void> refreshListeners() async {
    firebaseRepo.streamUserDetails(firebaseRepo.getUid()).listen((event) {
      _addDetails(event);
    });
    firebaseRepo.cartStatusListen(firebaseRepo.getUid()).listen((event) {
      globalListener.refreshListener(
        GlobalListenerConstants.cartList,
        List<CartModel>.generate(
          event.docs.length,
          (index) {
            final DocumentSnapshot documentSnapshot = event.docs[index];
            return CartModel.fromJson(documentSnapshot.data());
          },
        ),
      );
    });
  }

  void _addDetails(DocumentSnapshot documentSnapshot) {
    final AccountDetails accountDetails = AccountDetails.fromDocument(documentSnapshot.data());
    accountDetails.addresses = accountDetails.addresses.reversed.toList();

    globalListener.refreshListener(
      GlobalListenerConstants.accountDetails,
      accountDetails,
    );

    emit(state.copyWith(
      accountDetails: accountDetails,
    ));
  }
}
