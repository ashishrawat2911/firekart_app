//@GeneratedMicroModule;AnalyticsPackageModule;package:analytics/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:analytics/analytics/firebase_analytics_impl.dart' as _i4;
import 'package:analytics/crashlytics_service.dart' as _i5;
import 'package:analytics/performance/firebase_performance_moniter.dart' as _i7;
import 'package:core/analytics/analytics.dart' as _i3;
import 'package:core/performance/performance_moniter.dart' as _i6;
import 'package:injectable/injectable.dart' as _i1;

class AnalyticsPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.factory<_i3.Analytics>(() => _i4.FirebaseAnalyticsImpl());
    gh.singleton<_i5.CrashlyticsService>(_i5.CrashlyticsService());
    gh.singleton<_i6.PerformanceMonitor>(_i7.FirebasePerformanceMonitor());
  }
}
