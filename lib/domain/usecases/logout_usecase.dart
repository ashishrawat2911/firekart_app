import 'package:fluttercommerce/domain/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase {
  LogoutUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<void> execute() {
    return _firebaseRepository.logoutUser();
  }
}
