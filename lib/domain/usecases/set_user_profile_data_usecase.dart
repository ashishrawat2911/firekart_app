import 'package:fluttercommerce/data/firebase_manager/firestore_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SetProfileUserDataUseCase {
  final FirebaseRepository _firebaseRepository;

  SetProfileUserDataUseCase(this._firebaseRepository);

  Future<void> execute({
    String? displayName,
    String? photoUrl,
  }) {
    return _firebaseRepository.setAccountDetails(displayName: displayName, photoUrl: photoUrl);
  }
}
