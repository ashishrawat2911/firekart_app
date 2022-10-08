import 'package:fluttercommerce/domain/models/account_details_model.dart';
import 'package:fluttercommerce/data/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SetAccountDetailsUseCase {
  SetAccountDetailsUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<void> execute(AccountDetailsModel accountDetails) {
    return _firebaseRepository.addUserDetails(accountDetails);
  }
}
