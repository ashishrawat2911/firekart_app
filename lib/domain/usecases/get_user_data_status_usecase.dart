import 'package:fluttercommerce/data/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserDataStatusUseCase {
  GetUserDataStatusUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<bool> execute() {
    return _firebaseRepository.checkUserDetail();
  }
}
