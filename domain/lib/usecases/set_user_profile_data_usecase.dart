import 'package:data/service/firebase_service.dart';
import 'package:injectable/injectable.dart';

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
