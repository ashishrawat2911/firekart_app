//@GeneratedMicroModule;FirebaseImplPackageModule;package:firebase_impl/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:core/analytics/analytics.dart' as _i11;
import 'package:core/performance/performance_moniter.dart' as _i9;
import 'package:firebase_analytics/firebase_analytics.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i5;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i6;
import 'package:firebase_impl/analytics/firebase_analytics_impl.dart' as _i12;
import 'package:firebase_impl/crashlytics_service.dart' as _i13;
import 'package:firebase_impl/deeplink/firebase_deep_link.dart' as _i14;
import 'package:firebase_impl/di/module/firebase_module.dart' as _i15;
import 'package:firebase_impl/performance/firebase_performance_moniter.dart'
    as _i10;
import 'package:firebase_performance/firebase_performance.dart' as _i8;
import 'package:injectable/injectable.dart' as _i1;

class FirebaseImplPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final firebaseModule = _$FirebaseModule();
    gh.singleton<_i3.FirebaseAnalytics>(firebaseModule.firebaseAnalytics);
    gh.singleton<_i4.FirebaseAuth>(firebaseModule.firebaseAuth);
    gh.singleton<_i5.FirebaseCrashlytics>(firebaseModule.firebaseCrashlytics);
    gh.singleton<_i6.FirebaseDynamicLinks>(firebaseModule.firebaseDynamicLinks);
    gh.singleton<_i7.FirebaseFirestore>(firebaseModule.firebaseFireStore);
    gh.singleton<_i8.FirebasePerformance>(firebaseModule.firebasePerformance);
    gh.singleton<_i9.PerformanceMonitor>(
        _i10.FirebasePerformanceMonitor(gh<_i8.FirebasePerformance>()));
    gh.factory<_i11.Analytics>(
        () => _i12.FirebaseAnalyticsImpl(gh<_i3.FirebaseAnalytics>()));
    gh.singleton<_i13.CrashlyticsService>(
        _i13.CrashlyticsService(gh<_i5.FirebaseCrashlytics>()));
    gh.factory<_i14.FirebaseDeepLink>(
        () => _i14.FirebaseDeepLink(gh<_i6.FirebaseDynamicLinks>()));
  }
}

class _$FirebaseModule extends _i15.FirebaseModule {}
