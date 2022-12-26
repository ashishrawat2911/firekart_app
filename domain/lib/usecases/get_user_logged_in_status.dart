import 'package:domain/repository/firebase_repository.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@injectable
class GetUserLoggedInStatusUseCase {
  GetUserLoggedInStatusUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  bool execute() {
    try {
      final user = _firebaseRepository.getCurrentUser();
      return !(user == null);
    } catch (e) {
      return false;
    }
  }
}
