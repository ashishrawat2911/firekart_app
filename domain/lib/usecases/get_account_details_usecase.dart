import 'package:domain/repository/firebase_repository.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../models/account_details_model.dart';

@injectable
class GetAccountDetailsUseCase {
  GetAccountDetailsUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<AccountDetails> execute() {
    return _firebaseRepository.fetchUserDetails();
  }
}
