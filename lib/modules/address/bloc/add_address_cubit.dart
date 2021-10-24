import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/modules/address/state/add_address_state.dart';
import 'package:fluttercommerce/modules/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/modules/common/models/account_details_model.dart';

class AddAddressCubit extends Cubit<AddAddressState> {
  FirestoreRepository _firebaseRepo;

  AddAddressCubit(this._firebaseRepo) : super(Idle());

  saveAddress(AccountDetails accountDetails, Address address) {
    emit(ButtonLoading());

    if (address.isDefault) {
      List.generate(accountDetails.addresses.length, (index) {
        accountDetails.addresses[index].isDefault = false;
      });
    }
    accountDetails.addresses.add(address);
    _firebaseRepo.addUserDetails(accountDetails).then((value) {
      emit(AddAddressState.successful());
    }).catchError((e) {
      emit(AddAddressState.error(e.toString()));
    });
  }
}
