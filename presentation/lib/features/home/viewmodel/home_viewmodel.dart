import 'package:core/state_manager/view_model.dart';
import 'package:domain/models/account_details_model.dart';
import 'package:domain/usecases/get_cart_status_use_case.dart';
import 'package:domain/usecases/stream_account_details_usecase.dart';
import 'package:injectable/injectable.dart';

import '../state/home_state.dart';

@injectable
class HomeScreenViewModel extends ViewModel<HomeState> {
  HomeScreenViewModel(
    this._getCartStatusUseCase,
    this._accountDetailsUseCaseUseCase,
  ) : super(const HomeState());

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
    _getCartStatusUseCase.execute().listen((event) {});
  }

  void _addDetails(AccountDetails accountDetails) {
    accountDetails.addresses = accountDetails.addresses.reversed.toList();

    state = state.copyWith(
      accountDetails: accountDetails,
    );
  }
}
