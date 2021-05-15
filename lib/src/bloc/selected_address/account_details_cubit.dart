import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/models/account_details_model.dart';
import 'package:fluttercommerce/src/repository/auth_repository.dart';
import 'package:fluttercommerce/src/repository/firestore_repository.dart';

import 'account_details_state.dart';

class AccountDetailsCubit extends Cubit<AccountDetailsState> {
  AccountDetailsCubit() : super(AccountDetailsState()) {
    streamAccountDetails();
  }

  FirestoreRepository firebaseRepo = AppInjector.get<FirestoreRepository>();
  AuthRepository authRepo = AppInjector.get<AuthRepository>();

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
    List<void>.generate(state.accountDetails.addresses.length, (int index) {
      final Address add = state.accountDetails.addresses[index];
      if (add.isDefault) {
        address = add;
      }
    });

    if (address == null && state.accountDetails.addresses.isNotEmpty) {
      address = state.accountDetails.addresses[0];
    }
    emit(state.copyWith(
      accountDetails: accountDetails,
      selectedAddress: address,
    ));
  }
}
