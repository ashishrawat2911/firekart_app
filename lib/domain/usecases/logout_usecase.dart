import 'package:fluttercommerce/data/repository/firestore_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase {
  LogoutUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<void> execute() {
    return _firebaseRepository.logoutUser();
  }
}
