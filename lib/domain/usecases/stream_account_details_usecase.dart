import 'package:fluttercommerce/domain/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../models/account_details_model.dart';

@injectable
class StreamAccountDetailsUseCaseUseCase {
  StreamAccountDetailsUseCaseUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Stream<AccountDetails> execute() {
    return _firebaseRepository.streamUserDetails();
  }
}
