//@GeneratedMicroModule;DataPackageModule;package:data/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;
import 'dart:io' as _i6;

import 'package:core/connectivity/network_connectivity.dart' as _i23;
import 'package:core/storage/prefrences_storage.dart' as _i8;
import 'package:core/storage/secure_storage.dart' as _i9;
import 'package:data/di/module/database_module.dart' as _i27;
import 'package:data/di/module/network_module.dart' as _i26;
import 'package:data/error/app_error_model.dart' as _i3;
import 'package:data/error/network_error_handler.dart' as _i10;
import 'package:data/mapper/data_mapper.dart' as _i4;
import 'package:data/repository/auth_repository.dart' as _i16;
import 'package:data/repository/cart_repository.dart' as _i18;
import 'package:data/repository/order_repository.dart' as _i20;
import 'package:data/repository/product_repository.dart' as _i22;
import 'package:data/repository/user_repository.dart' as _i25;
import 'package:data/source/local/dao/cart_dao.dart' as _i12;
import 'package:data/source/local/dao/product_dao.dart' as _i11;
import 'package:data/source/local/db/firekart_database.dart' as _i5;
import 'package:data/source/local/local_storage.dart' as _i7;
import 'package:data/source/remote/api_service.dart' as _i14;
import 'package:dio/dio.dart' as _i13;
import 'package:domain/repository/auth_repository.dart' as _i15;
import 'package:domain/repository/cart_repository.dart' as _i17;
import 'package:domain/repository/order_repository.dart' as _i19;
import 'package:domain/repository/product_repository.dart' as _i21;
import 'package:domain/repository/user_repository.dart' as _i24;
import 'package:injectable/injectable.dart' as _i1;

class DataPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) async {
    final networkModule = _$NetworkModule();
    final databaseModule = _$DatabaseModule();
    gh.singleton<_i3.AppErrorModel>(_i3.AppErrorModel());
    gh.singleton<_i4.DataMapper>(_i4.DataMapper());
    gh.singleton<_i5.FirekartDatabase>(
      _i5.FirekartDatabase(),
      dispose: (i) => i.closeDatabase(),
    );
    await gh.factoryAsync<_i6.HttpClient>(
      () => networkModule.sslHttpClient(),
      preResolve: true,
    );
    gh.factory<_i7.LocalStorage>(() => _i7.LocalStorage(
          gh<_i8.PreferencesStorage>(),
          gh<_i9.SecureStorage>(),
        ));
    gh.singleton<_i10.NetworkErrorHandler>(
        _i10.NetworkErrorHandler(gh<_i3.AppErrorModel>()));
    gh.factory<_i11.ProductDao>(
        () => databaseModule.getProductDao(gh<_i5.FirekartDatabase>()));
    gh.factory<String>(
      () => networkModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i12.CartDao>(
        () => databaseModule.getCartDao(gh<_i5.FirekartDatabase>()));
    gh.factory<_i13.Dio>(() => networkModule.getDio(gh<_i7.LocalStorage>()));
    gh.factory<_i14.ApiService>(() => _i14.ApiService(
          gh<_i13.Dio>(),
          gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i15.AuthRepository>(() => _i16.AuthRepositoryImpl(
          gh<_i7.LocalStorage>(),
          gh<_i4.DataMapper>(),
          gh<_i14.ApiService>(),
        ));
    gh.factory<_i17.CartRepository>(() => _i18.CartRepositoryImpl(
          gh<_i4.DataMapper>(),
          gh<_i14.ApiService>(),
          gh<_i12.CartDao>(),
        ));
    gh.factory<_i19.OrderRepository>(() => _i20.OrderRepositoryImpl(
          gh<_i4.DataMapper>(),
          gh<_i14.ApiService>(),
          gh<_i12.CartDao>(),
        ));
    gh.factory<_i21.ProductRepository>(() => _i22.ProductRepositoryImpl(
          gh<_i4.DataMapper>(),
          gh<_i14.ApiService>(),
          gh<_i11.ProductDao>(),
          gh<_i23.NetworkConnectivity>(),
        ));
    gh.factory<_i24.UserRepository>(() => _i25.UserRepositoryImpl(
          gh<_i4.DataMapper>(),
          gh<_i14.ApiService>(),
        ));
  }
}

class _$NetworkModule extends _i26.NetworkModule {}

class _$DatabaseModule extends _i27.DatabaseModule {}
