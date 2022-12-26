import 'package:domain/repository/firebase_repository.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@injectable
class GetCurrentUserPhoneNumberUseCase {
  GetCurrentUserPhoneNumberUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  String execute() {
    return _firebaseRepository.getPhoneNumber() ?? '';
  }
}
