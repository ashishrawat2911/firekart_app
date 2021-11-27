import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/init/state/check_status_state.dart';

class CheckStatusBloc extends Cubit<CheckStatusState> {
  CheckStatusBloc(this.firebaseRepo) : super(InitialState());
  FirebaseManager firebaseRepo;

  Future<void> checkStatus(bool checkForAccountStatusOnly) async {
    Future.delayed(Duration(seconds: checkForAccountStatusOnly ? 2 : 0),
        () async {
      final status = await firebaseRepo.checkUserLoggedInStatus();
      if (checkForAccountStatusOnly || status) {
        final isUserDataPresent = await firebaseRepo.checkUserDetail();
        if (isUserDataPresent) {
          emit(NavigateToMainHomeState());
        } else {
          emit(NavigateToAddUserState());
        }
      } else {
        emit(NavigateToLoginState());
      }
    });
  }
}
