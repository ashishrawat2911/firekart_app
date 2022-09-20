// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fluttercommerce/features/app/firebase/firestore_manager.dart';
// import 'package:fluttercommerce/features/app/global_listener/global_listener.dart';
// import 'package:fluttercommerce/features/app/state_manager/state_manager.dart';
// import 'package:fluttercommerce/features/common/models/account_details_model.dart';
//
// import '../state/account_details_state.dart';
//
// class AccountDetailsCubit extends StateManager<AccountDetailsState> {
//   AccountDetailsCubit(
//     this.firebaseRepo,
//     this.globalListener,
//   ) : super(AccountDetailsState()) {
//     globalListener
//         .registerListener(GlobalListenerConstants.accountDetails)
//         .listen((event) {
//       streamAccountDetails();
//     });
//   }
//
//   final FirebaseManager firebaseRepo;
//   final GlobalListener globalListener;
//
//
// }
