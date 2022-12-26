import 'package:domain/repository/firebase_repository.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@injectable
class GetUserDataStatusUseCase {
  GetUserDataStatusUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<bool> execute() {
    return _firebaseRepository.checkUserDetail();
  }
}
