import 'package:fluttercommerce/data/firebase_manager/firestore_manager.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase {
  LogoutUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<void> execute() {
    return _firebaseRepository.logoutUser();
  }
}
