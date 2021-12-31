import 'package:core/core.dart';
import 'package:intro/src/home/state/home_state.dart';
import 'package:network/network.dart';

class HomeScreenCubit extends StateManager<HomeState> {
  HomeScreenCubit(this.firebaseRepo, this.globalListener)
      : super(const HomeState());

  final FirebaseManager firebaseRepo;
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
    final AccountDetails accountDetails =
        AccountDetails.fromDocument(documentSnapshot.data());
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
