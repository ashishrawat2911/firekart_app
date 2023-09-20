//@GeneratedMicroModule;FirebaseImplPackageModule;package:firebase_impl/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i3;
import 'package:firebase_impl/deeplink/firebase_deep_link.dart' as _i4;
import 'package:firebase_impl/di/module/firebase_module.dart' as _i5;
import 'package:injectable/injectable.dart' as _i1;

class FirebaseImplPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final firebaseModule = _$FirebaseModule();
    gh.singleton<_i3.FirebaseDynamicLinks>(firebaseModule.firebaseDynamicLinks);
    gh.factory<_i4.FirebaseDeepLink>(
        () => _i4.FirebaseDeepLink(gh<_i3.FirebaseDynamicLinks>()));
  }
}

class _$FirebaseModule extends _i5.FirebaseModule {}
