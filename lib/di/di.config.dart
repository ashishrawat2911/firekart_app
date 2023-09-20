// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:analytics/di/di.module.dart' as _i9;
import 'package:core/connectivity/network_connectivity.dart' as _i14;
import 'package:core/di/di.module.dart' as _i3;
import 'package:data/di/di.module.dart' as _i6;
import 'package:deeplink/di/di.module.dart' as _i4;
import 'package:domain/di/di.module.dart' as _i7;
import 'package:domain/usecases/get_user_logged_in_status.dart' as _i11;
import 'package:domain/usecases/set_device_token_usecase.dart' as _i13;
import 'package:firekart/app/view_model/app_view_model.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:notification/di/di.module.dart' as _i5;
import 'package:notification/push_notification/push_notification_handler.dart'
    as _i12;
import 'package:presentation/di/di.module.dart' as _i8;

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
    await _i4.DeeplinkPackageModule().init(gh);
    await _i5.NotificationPackageModule().init(gh);
    await _i6.DataPackageModule().init(gh);
    await _i7.DomainPackageModule().init(gh);
    await _i8.PresentationPackageModule().init(gh);
    await _i9.AnalyticsPackageModule().init(gh);
    gh.singleton<_i10.AppViewModel>(_i10.AppViewModel(
      gh<_i11.GetUserLoggedInStatusUseCase>(),
      gh<_i12.PushNotificationHandler>(),
      gh<_i13.SetDeviceTokenUseCase>(),
      gh<_i14.NetworkConnectivity>(),
    ));
    return this;
  }
}
