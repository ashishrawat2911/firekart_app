import 'package:fluttercommerce/data/firebase_manager/firestore_repository.dart';
import 'package:fluttercommerce/data/models/account_details_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class StreamAccountDetailsUseCaseUseCase {
  StreamAccountDetailsUseCaseUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Stream<AccountDetailsModel> execute() {
    return _firebaseRepository
        .streamUserDetails(_firebaseRepository.getUid())
        .map((event) => AccountDetailsModel.fromDocument(event.data()));
  }
}
