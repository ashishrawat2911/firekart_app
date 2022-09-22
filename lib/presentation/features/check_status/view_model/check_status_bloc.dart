import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/firebase_manager/firestore_manager.dart';
import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';

@injectable
class CheckStatusViewModel extends Cubit<int> {
  CheckStatusViewModel(this.firebaseRepo) : super(0);
  FirebaseManager firebaseRepo;

  Future<void> checkStatus(bool checkForAccountStatusOnly) async {
    Future.delayed(Duration(seconds: checkForAccountStatusOnly ? 2 : 0), () async {
      final status = await firebaseRepo.checkUserLoggedInStatus();
      if (checkForAccountStatusOnly || status) {
        final isUserDataPresent = await firebaseRepo.checkUserDetail();
        if (isUserDataPresent) {
          NavigationHandler.navigateTo(
            const HomeScreenRoute(),
            navigationType: NavigationType.pushReplacement,
          );
        } else {
          NavigationHandler.navigateTo(
            AddUserDetailScreenRoute(newAddress: true),
            navigationType: NavigationType.pushReplacement,
          );
        }
      } else {
        NavigationHandler.navigateTo(
          const LoginScreenRoute(),
          navigationType: NavigationType.pushReplacement,
        );
      }
    });
  }
}
