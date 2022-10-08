import 'package:fluttercommerce/domain/usecases/get_cart_status_use_case.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/state_manager/state_manager.dart';
import '../../../../domain/models/account_details_model.dart';
import '../../../../domain/usecases/stream_account_details_usecase.dart';
import '../state/home_state.dart';

@injectable
class HomeScreenViewModel extends StateManager<HomeState> {
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

  void _addDetails(AccountDetailsModel accountDetails) {
    accountDetails.addresses = accountDetails.addresses.reversed.toList();

    emit(state.copyWith(
      accountDetails: accountDetails,
    ));
  }
}
