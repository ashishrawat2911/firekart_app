//@GeneratedMicroModule;NotificationPackageModule;package:notification/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:injectable/injectable.dart' as _i1;
import 'package:notification/push_notification/push_notification_handler.dart'
    as _i3;
import 'package:notification/push_notification/push_notification_handler_impl.dart'
    as _i4;

class NotificationPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.singleton<_i3.PushNotificationHandler>(
        _i4.PushNotificationHandlerImpl());
  }
}
