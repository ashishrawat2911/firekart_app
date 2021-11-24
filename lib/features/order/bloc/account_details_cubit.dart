import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/app/repo/auth_repository.dart';
import 'package:fluttercommerce/features/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/features/common/models/account_details_model.dart';

import '../state/account_details_state.dart';

class AccountDetailsCubit extends Cubit<AccountDetailsState> {
  FirestoreRepository firebaseRepo;

  AuthRepository authRepo;

  AccountDetailsCubit(this.firebaseRepo, this.authRepo)
      : super(AccountDetailsState()) {
    streamAccountDetails();
  }

  Future<void> streamAccountDetails() async {
    firebaseRepo
        .streamUserDetails(await authRepo.getUid())
        .listen((DocumentSnapshot event) {
      _addDetails(event);
    });
  }

  set selectedAddress(Address selectedAddress) {
    emit(state.copyWith(
      selectedAddress: selectedAddress,
    ));
  }

  void _addDetails(DocumentSnapshot documentSnapshot) {
    final AccountDetails accountDetails =
        AccountDetails.fromDocument(documentSnapshot);
    accountDetails.addresses = accountDetails.addresses.reversed.toList();
    Address address;
    List.generate(accountDetails?.addresses?.length, (int index) {
      final Address add = accountDetails.addresses[index];
      if (add.isDefault) {
        address = add;
      }
    });

    if (address == null && accountDetails.addresses.isNotEmpty) {
      address = accountDetails.addresses[0];
    }
    emit(state.copyWith(
      accountDetails: accountDetails,
      selectedAddress: address,
    ));
  }
}
