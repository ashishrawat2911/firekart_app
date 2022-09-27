import 'package:fluttercommerce/data/firebase_manager/firestore_manager.dart';
import 'package:fluttercommerce/data/models/account_details_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAccountDetailsUseCase {
  GetAccountDetailsUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<AccountDetails> execute() {
    return _firebaseRepository.fetchUserDetails();
  }
}
