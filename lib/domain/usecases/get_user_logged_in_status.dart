import 'package:fluttercommerce/data/firebase_manager/firestore_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserLoggedInStatusUseCase {
  GetUserLoggedInStatusUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  bool execute()  {
    try {
      final user = _firebaseRepository.getCurrentUser();
      if (user == null) {
        return false;
      } else {
        return true;
      }
    } catch (e) {
      return false;
    }
  }
}
