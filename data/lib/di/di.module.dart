//@GeneratedMicroModule;DataPackageModule;package:data/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:data/di/module/firebase_module.dart' as _i9;
import 'package:data/mapper/data_mapper.dart' as _i3;
import 'package:data/repository/firebase_repository.dart' as _i8;
import 'package:data/service/firebase_service.dart' as _i6;
import 'package:domain/repository/firebase_repository.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:injectable/injectable.dart' as _i1;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
class DataPackageModule extends _i1.MicroPackageModule {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final dataModule = _$DataModule();
    gh.lazySingleton<_i3.DataMapper>(() => _i3.DataMapperImpl());
    gh.singleton<_i4.FirebaseAuth>(dataModule.firebaseAuth);
    gh.singleton<_i5.FirebaseFirestore>(dataModule.firebaseFireStore);
    gh.factory<_i6.FirebaseService>(() => _i6.FirebaseService(
          gh<_i5.FirebaseFirestore>(),
          gh<_i4.FirebaseAuth>(),
        ));
    gh.singleton<_i7.FirebaseRepository>(_i8.FirebaseRepositoryImpl(
      gh<_i3.DataMapper>(),
      gh<_i6.FirebaseService>(),
    ));
  }
}

class _$DataModule extends _i9.DataModule {}
