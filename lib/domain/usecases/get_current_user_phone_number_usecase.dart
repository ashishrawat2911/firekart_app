import 'package:fluttercommerce/data/service/firebase_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrentUserPhoneNumberUseCase {
  GetCurrentUserPhoneNumberUseCase(this._firebaseRepository);

  final FirebaseService _firebaseRepository;

  String execute() {
    return _firebaseRepository.getPhoneNumber() ?? '';
  }
}
