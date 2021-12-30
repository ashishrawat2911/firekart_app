import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation/navigation.dart';
import 'package:network/network.dart';

class CheckStatusBloc extends Cubit<int> {
  CheckStatusBloc(this.firebaseRepo) : super(0);
  FirebaseManager firebaseRepo;

  Future<void> checkStatus(bool checkForAccountStatusOnly) async {
    Future.delayed(Duration(seconds: checkForAccountStatusOnly ? 2 : 0),
        () async {
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
