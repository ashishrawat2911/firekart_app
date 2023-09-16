// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i16;
import 'package:core/analytics/analytics.dart' as _i20;
import 'package:core/connectivity/network_connectivity.dart' as _i11;
import 'package:core/di/di.module.dart' as _i3;
import 'package:core/performance/performance_moniter.dart' as _i18;
import 'package:data/di/di.module.dart' as _i4;
import 'package:domain/di/di.module.dart' as _i5;
import 'package:domain/usecases/get_user_logged_in_status.dart' as _i9;
import 'package:domain/usecases/notification_handler_usecase.dart' as _i10;
import 'package:domain/usecases/set_device_token_usecase.dart' as _i8;
import 'package:firebase_analytics/firebase_analytics.dart' as _i12;
import 'package:firebase_auth/firebase_auth.dart' as _i13;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i14;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i15;
import 'package:firebase_performance/firebase_performance.dart' as _i17;
import 'package:firekart/app/view_model/app_view_model.dart' as _i7;
import 'package:firekart/di/module/firebase_module.dart' as _i24;
import 'package:firekart/firebase_impl/analytics/firebase_analytics_impl.dart'
    as _i21;
import 'package:firekart/firebase_impl/crashlytics_service.dart' as _i22;
import 'package:firekart/firebase_impl/deeplink/firebase_deep_link.dart'
    as _i23;
import 'package:firekart/firebase_impl/performance/firebase_performance_moniter.dart'
    as _i19;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:presentation/di/di.module.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i3.CorePackageModule().init(gh);
    await _i4.DataPackageModule().init(gh);
    await _i5.DomainPackageModule().init(gh);
    await _i6.PresentationPackageModule().init(gh);
    final firebaseModule = _$FirebaseModule();
    gh.singleton<_i7.AppViewModel>(_i7.AppViewModel(
      gh<_i8.SetDeviceTokenUseCase>(),
      gh<_i9.GetUserLoggedInStatusUseCase>(),
      gh<_i10.PushNotificationHandlerUseCase>(),
      gh<_i11.NetworkConnectivity>(),
    ));
    gh.singleton<_i12.FirebaseAnalytics>(firebaseModule.firebaseAnalytics);
    gh.singleton<_i13.FirebaseAuth>(firebaseModule.firebaseAuth);
    gh.singleton<_i14.FirebaseCrashlytics>(firebaseModule.firebaseCrashlytics);
    gh.singleton<_i15.FirebaseDynamicLinks>(
        firebaseModule.firebaseDynamicLinks);
    gh.singleton<_i16.FirebaseFirestore>(firebaseModule.firebaseFireStore);
    gh.singleton<_i17.FirebasePerformance>(firebaseModule.firebasePerformance);
    gh.singleton<_i18.PerformanceMonitor>(
        _i19.FirebasePerformanceMonitor(gh<_i17.FirebasePerformance>()));
    gh.factory<_i20.Analytics>(
        () => _i21.FirebaseAnalyticsImpl(gh<_i12.FirebaseAnalytics>()));
    gh.singleton<_i22.CrashlyticsService>(
        _i22.CrashlyticsService(gh<_i14.FirebaseCrashlytics>()));
    gh.factory<_i23.FirebaseDeepLink>(
        () => _i23.FirebaseDeepLink(gh<_i15.FirebaseDynamicLinks>()));
    return this;
  }
}

class _$FirebaseModule extends _i24.FirebaseModule {}
