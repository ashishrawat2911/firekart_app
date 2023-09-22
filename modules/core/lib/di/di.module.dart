//@GeneratedMicroModule;CorePackageModule;package:core/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:core/connectivity/network_connectivity.dart' as _i4;
import 'package:core/di/module/storage_module.dart' as _i8;
import 'package:core/encrypt/app_encryptor.dart' as _i3;
import 'package:core/storage/prefrences_storage.dart' as _i6;
import 'package:core/storage/secure_storage.dart' as _i7;
import 'package:injectable/injectable.dart' as _i1;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

class CorePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) async {
    final storageModule = _$StorageModule();
    gh.singleton<_i3.AppEncryptor>(_i3.AppEncryptor());
    gh.singleton<_i4.NetworkConnectivity>(
      _i4.NetworkConnectivity(),
      dispose: (i) => i.dispose(),
    );
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => storageModule.pref,
      preResolve: true,
    );
    gh.singleton<_i6.PreferencesStorage>(
        _i6.PreferencesStorage(gh<_i5.SharedPreferences>()));
    gh.singleton<_i7.SecureStorage>(_i7.SecureStorage(
      gh<_i6.PreferencesStorage>(),
      gh<_i3.AppEncryptor>(),
    ));
  }
}

class _$StorageModule extends _i8.StorageModule {}
