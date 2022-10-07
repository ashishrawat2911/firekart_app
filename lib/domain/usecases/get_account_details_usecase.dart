import 'package:fluttercommerce/data/models/account_details_model.dart';
import 'package:fluttercommerce/data/repository/firestore_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAccountDetailsUseCase {
  GetAccountDetailsUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<AccountDetailsModel> execute() {
    return _firebaseRepository.fetchUserDetails();
  }
}
