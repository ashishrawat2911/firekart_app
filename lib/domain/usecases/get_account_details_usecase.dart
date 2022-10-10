import 'package:fluttercommerce/data/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart';

import '../models/account_details_model.dart';

@injectable
class GetAccountDetailsUseCase {
  GetAccountDetailsUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<AccountDetails> execute() {
    return _firebaseRepository.fetchUserDetails();
  }
}
