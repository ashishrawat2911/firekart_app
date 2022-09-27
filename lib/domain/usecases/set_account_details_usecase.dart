import 'package:fluttercommerce/data/firebase_manager/firestore_manager.dart';
import 'package:fluttercommerce/data/models/account_details_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class SetAccountDetailsUseCase {
  SetAccountDetailsUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<void> execute(AccountDetails accountDetails) {
    return _firebaseRepository.addUserDetails(accountDetails);
  }
}
