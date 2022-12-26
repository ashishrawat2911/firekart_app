import 'package:data/service/firebase_service.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@injectable
class SetProfileUserDataUseCase {
  final FirebaseService _firebaseRepository;

  SetProfileUserDataUseCase(this._firebaseRepository);

  Future<void> execute({
    String? displayName,
    String? photoUrl,
  }) {
    return _firebaseRepository.setAccountDetails(
        displayName: displayName, photoUrl: photoUrl);
  }
}
