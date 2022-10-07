import 'package:fluttercommerce/data/repository/firestore_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrentUserPhoneNumberUseCase {
  GetCurrentUserPhoneNumberUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  String execute() {
    return _firebaseRepository.getPhoneNumber() ?? '';
  }
}
