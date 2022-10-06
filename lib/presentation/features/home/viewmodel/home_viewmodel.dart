import 'package:fluttercommerce/domain/usecases/get_cart_status_use_case.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/global_listener/global_listener.dart';
import '../../../../core/res/global_listener_constants.dart';
import '../../../../core/state_manager/state_manager.dart';
import '../../../../data/models/account_details_model.dart';
import '../../../../domain/usecases/stream_account_details_usecase.dart';
import '../state/home_state.dart';

@injectable
class HomeScreenViewModel extends StateManager<HomeState> {
  HomeScreenViewModel(
    this.globalListener,
    this._getCartStatusUseCase,
    this._accountDetailsUseCaseUseCase,
  ) : super(const HomeState());

  final GlobalListener globalListener;
  final GetCartStatusUseCase _getCartStatusUseCase;
  final StreamAccountDetailsUseCaseUseCase _accountDetailsUseCaseUseCase;

  void init() {
    refreshListeners();
  }

  void setBottomBarIndex(int value) {
    state = state.copyWith(bottomIndex: value);
  }

  Future<void> refreshListeners() async {
    _accountDetailsUseCaseUseCase.execute().listen((account) {
      _addDetails(account);
    });
    _getCartStatusUseCase.execute().listen((event) {
      globalListener.refreshListener(GlobalListenerConstants.cartList, event);
    });
  }

  void _addDetails(AccountDetails accountDetails) {
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
