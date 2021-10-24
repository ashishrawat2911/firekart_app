import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/modules/address/state/address_card_state.dart';
import 'package:fluttercommerce/modules/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/modules/common/models/account_details_model.dart';

class AddressCardCubit extends Cubit<AddressCardState> {
  AddressCardCubit(this._firebaseRepo) : super(AddressCardState.idle());

  final FirestoreRepository _firebaseRepo;

  void deleteAddress(AccountDetails accountDetails, Address address) {
    emit(const AddressCardState.editLoading());

    accountDetails.addresses.remove(address);
    _saveData(accountDetails);
  }

  void setAsDefault(AccountDetails accountDetails, int cardIndex) {
    emit(const AddressCardState.setDefaultLoading());
    accountDetails.addresses[cardIndex].isDefault = true;
    List.generate(accountDetails.addresses.length, (index) {
      if (cardIndex != index) {
        accountDetails.addresses[index].isDefault = false;
      }
    });
    _saveData(accountDetails);
  }

  void _saveData(AccountDetails accountDetails) {
    _firebaseRepo.addUserDetails(accountDetails).then((value) {
      emit(const AddressCardState.successful());
    }).catchError((e) {
      emit(AddressCardState.error(e.toString()));
    });
  }
}
