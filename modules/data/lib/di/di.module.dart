//@GeneratedMicroModule;DataPackageModule;package:data/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;
import 'dart:io' as _i7;

import 'package:core/connectivity/network_connectivity.dart' as _i24;
import 'package:core/di/di.module.dart' as _i3;
import 'package:core/storage/prefrences_storage.dart' as _i9;
import 'package:core/storage/secure_storage.dart' as _i10;
import 'package:data/di/module/database_module.dart' as _i29;
import 'package:data/di/module/network_module.dart' as _i28;
import 'package:data/error/app_error_model.dart' as _i4;
import 'package:data/error/network_error_handler.dart' as _i11;
import 'package:data/mapper/data_mapper.dart' as _i5;
import 'package:data/repository/auth_repository.dart' as _i17;
import 'package:data/repository/cart_repository.dart' as _i19;
import 'package:data/repository/order_repository.dart' as _i21;
import 'package:data/repository/product_repository.dart' as _i23;
import 'package:data/repository/user_repository.dart' as _i26;
import 'package:data/source/local/dao/cart_dao.dart' as _i13;
import 'package:data/source/local/dao/product_dao.dart' as _i12;
import 'package:data/source/local/db/firekart_database.dart' as _i6;
import 'package:data/source/local/local_storage.dart' as _i8;
import 'package:data/source/remote/api_service.dart' as _i15;
import 'package:dio/dio.dart' as _i14;
import 'package:domain/di/di.module.dart' as _i27;
import 'package:domain/repository/auth_repository.dart' as _i16;
import 'package:domain/repository/cart_repository.dart' as _i18;
import 'package:domain/repository/order_repository.dart' as _i20;
import 'package:domain/repository/product_repository.dart' as _i22;
import 'package:domain/repository/user_repository.dart' as _i25;
import 'package:injectable/injectable.dart' as _i1;

class DataPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) async {
    await _i3.CorePackageModule().init(gh);
    final networkModule = _$NetworkModule();
    final databaseModule = _$DatabaseModule();
    gh.singleton<_i4.AppErrorModel>(_i4.AppErrorModel());
    gh.singleton<_i5.DataMapper>(_i5.DataMapper());
    gh.singleton<_i6.FirekartDatabase>(
      _i6.FirekartDatabase(),
      dispose: (i) => i.closeDatabase(),
    );
    await gh.factoryAsync<_i7.HttpClient>(
      () => networkModule.sslHttpClient(),
      preResolve: true,
    );
    gh.factory<_i8.LocalStorage>(() => _i8.LocalStorage(
          gh<_i9.PreferencesStorage>(),
          gh<_i10.SecureStorage>(),
        ));
    gh.singleton<_i11.NetworkErrorHandler>(
        _i11.NetworkErrorHandler(gh<_i4.AppErrorModel>()));
    gh.factory<_i12.ProductDao>(
        () => databaseModule.getProductDao(gh<_i6.FirekartDatabase>()));
    gh.factory<String>(
      () => networkModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i13.CartDao>(
        () => databaseModule.getCartDao(gh<_i6.FirekartDatabase>()));
    gh.factory<_i14.Dio>(() => networkModule.getDio(gh<_i8.LocalStorage>()));
    gh.factory<_i15.ApiService>(() => _i15.ApiService(
          gh<_i14.Dio>(),
          gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i16.AuthRepository>(() => _i17.AuthRepositoryImpl(
          gh<_i8.LocalStorage>(),
          gh<_i5.DataMapper>(),
          gh<_i15.ApiService>(),
        ));
    gh.factory<_i18.CartRepository>(() => _i19.CartRepositoryImpl(
          gh<_i5.DataMapper>(),
          gh<_i15.ApiService>(),
          gh<_i13.CartDao>(),
        ));
    gh.factory<_i20.OrderRepository>(() => _i21.OrderRepositoryImpl(
          gh<_i5.DataMapper>(),
          gh<_i15.ApiService>(),
          gh<_i13.CartDao>(),
        ));
    gh.factory<_i22.ProductRepository>(() => _i23.ProductRepositoryImpl(
          gh<_i5.DataMapper>(),
          gh<_i15.ApiService>(),
          gh<_i12.ProductDao>(),
          gh<_i24.NetworkConnectivity>(),
        ));
    gh.factory<_i25.UserRepository>(() => _i26.UserRepositoryImpl(
          gh<_i5.DataMapper>(),
          gh<_i15.ApiService>(),
        ));
    await _i27.DomainPackageModule().init(gh);
  }
}

class _$NetworkModule extends _i28.NetworkModule {}

class _$DatabaseModule extends _i29.DatabaseModule {}
