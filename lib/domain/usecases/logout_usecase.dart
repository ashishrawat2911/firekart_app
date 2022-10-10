import 'package:fluttercommerce/data/service/firebase_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase {
  LogoutUseCase(this._firebaseRepository);

  final FirebaseService _firebaseRepository;

  Future<void> execute() {
    return _firebaseRepository.logoutUser();
  }
}
