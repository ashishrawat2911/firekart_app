import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/address/state/add_address_state.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/snackbar_handeler.dart';
import 'package:fluttercommerce/features/app/state_manager/state_manager.dart';
import 'package:fluttercommerce/features/common/models/account_details_model.dart';

class AddAddressCubit extends StateManager<AddAddressState> {
  FirebaseManager _firebaseRepo;

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
      SnackBarHandler.showSnackBar(title: e.toString());
      emit(AddAddressState.error(e.toString()));
    });
  }
}
