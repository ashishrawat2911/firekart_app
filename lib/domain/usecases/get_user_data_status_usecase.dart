import 'package:fluttercommerce/data/service/firebase_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserDataStatusUseCase {
  GetUserDataStatusUseCase(this._firebaseRepository);

  final FirebaseService _firebaseRepository;

  Future<bool> execute() {
    return _firebaseRepository.checkUserDetail();
  }
}
