//@GeneratedMicroModule;CorePackageModule;package:core/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:core/analytics/analytics.dart' as _i10;
import 'package:core/analytics/impl/firebase_analytics_impl.dart' as _i11;
import 'package:core/deeplink/firebase_deep_link.dart' as _i13;
import 'package:core/di/core_module.dart' as _i14;
import 'package:core/performance/impl/firebase_performance_moniter.dart' as _i8;
import 'package:core/performance/performance_moniter.dart' as _i7;
import 'package:core/services/crashlytics_service.dart' as _i12;
import 'package:core/utils/validator.dart' as _i9;
import 'package:firebase_analytics/firebase_analytics.dart' as _i3;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i4;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i5;
import 'package:firebase_performance/firebase_performance.dart' as _i6;
import 'package:injectable/injectable.dart' as _i1;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
class CorePackageModule extends _i1.MicroPackageModule {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final coreModule = _$CoreModule();
    gh.singleton<_i3.FirebaseAnalytics>(coreModule.firebaseAnalytics);
    gh.singleton<_i4.FirebaseCrashlytics>(coreModule.firebaseCrashlytics);
    gh.singleton<_i5.FirebaseDynamicLinks>(coreModule.firebaseDynamicLinks);
    gh.singleton<_i6.FirebasePerformance>(coreModule.firebasePerformance);
    gh.singleton<_i7.PerformanceMonitor>(
        _i8.FirebasePerformanceMonitor(gh<_i6.FirebasePerformance>()));
    gh.singleton<_i9.Validator>(_i9.Validator());
    gh.factory<_i10.Analytics>(
        () => _i11.FirebaseAnalyticsImpl(gh<_i3.FirebaseAnalytics>()));
    gh.singleton<_i12.CrashlyticsService>(
        _i12.CrashlyticsService(gh<_i4.FirebaseCrashlytics>()));
    gh.factory<_i13.FirebaseDeepLink>(
        () => _i13.FirebaseDeepLink(gh<_i5.FirebaseDynamicLinks>()));
  }
}

class _$CoreModule extends _i14.CoreModule {}
