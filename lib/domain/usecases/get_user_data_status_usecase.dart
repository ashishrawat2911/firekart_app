import 'package:fluttercommerce/data/firebase_manager/firestore_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserDataStatusUseCase {
  GetUserDataStatusUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<bool> execute() {
    return _firebaseRepository.checkUserDetail();
  }
}
