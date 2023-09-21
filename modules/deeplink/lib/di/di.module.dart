//@GeneratedMicroModule;DeeplinkPackageModule;package:deeplink/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:deeplink/deeplink/app_deep_link.dart' as _i3;
import 'package:deeplink/deeplink/firebase_deep_link.dart' as _i4;
import 'package:injectable/injectable.dart' as _i1;

class DeeplinkPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.factory<_i3.AppDeeplink>(() => _i3.AppDeeplink());
    gh.factory<_i4.FirebaseDeepLink>(() => _i4.FirebaseDeepLink());
  }
}
