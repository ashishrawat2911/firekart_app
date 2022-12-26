import 'package:domain/repository/firebase_repository.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../models/account_details_model.dart';

@injectable
class StreamAccountDetailsUseCaseUseCase {
  StreamAccountDetailsUseCaseUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Stream<AccountDetails> execute() {
    return _firebaseRepository.streamUserDetails();
  }
}
