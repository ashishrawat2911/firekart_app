import 'package:domain/repository/firebase_repository.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@injectable
class LogoutUseCase {
  LogoutUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<void> execute() {
    return _firebaseRepository.logoutUser();
  }
}
