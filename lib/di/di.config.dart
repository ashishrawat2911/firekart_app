// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i35;

import 'package:cloud_firestore/cloud_firestore.dart' as _i29;
import 'package:dio/dio.dart' as _i66;
import 'package:domain/di/di.module.dart' as _i3;
import 'package:domain/repository/auth_repository.dart' as _i68;
import 'package:domain/repository/cart_repository.dart' as _i70;
import 'package:domain/repository/order_repository.dart' as _i72;
import 'package:domain/repository/product_repository.dart' as _i74;
import 'package:domain/repository/user_repository.dart' as _i76;
import 'package:domain/usecases/add_address_usecase.dart' as _i8;
import 'package:domain/usecases/add_product_to_cart_usecase.dart' as _i51;
import 'package:domain/usecases/delete_product_from_cart_usecase.dart' as _i16;
import 'package:domain/usecases/edit_address_usecase.dart' as _i9;
import 'package:domain/usecases/get_account_details_usecase.dart' as _i6;
import 'package:domain/usecases/get_address_usecase.dart' as _i20;
import 'package:domain/usecases/get_all_orders_usecase.dart' as _i38;
import 'package:domain/usecases/get_all_product_usecase.dart' as _i11;
import 'package:domain/usecases/get_cart_status_use_case.dart' as _i18;
import 'package:domain/usecases/get_items_in_cart_usecase.dart' as _i50;
import 'package:domain/usecases/get_product_details_usecase.dart' as _i52;
import 'package:domain/usecases/get_user_logged_in_status.dart' as _i22;
import 'package:domain/usecases/logout_usecase.dart' as _i34;
import 'package:domain/usecases/notification_handler_usecase.dart' as _i59;
import 'package:domain/usecases/place_order_usecase.dart' as _i17;
import 'package:domain/usecases/search_products_use_case.dart' as _i48;
import 'package:domain/usecases/send_otp_usecase.dart' as _i42;
import 'package:domain/usecases/set_account_details_usecase.dart' as _i5;
import 'package:domain/usecases/set_device_token_usecase.dart' as _i58;
import 'package:domain/usecases/stream_account_details_usecase.dart' as _i33;
import 'package:domain/usecases/update_cart_usecase.dart' as _i19;
import 'package:firebase_analytics/firebase_analytics.dart' as _i25;
import 'package:firebase_auth/firebase_auth.dart' as _i26;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i27;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i28;
import 'package:firebase_performance/firebase_performance.dart' as _i30;
import 'package:firekart/app/view_model/app_view_model.dart' as _i57;
import 'package:firekart/core/analytics/analytics.dart' as _i55;
import 'package:firekart/core/connectivity/network_connectivity.dart' as _i39;
import 'package:firekart/core/encrypt/app_encryptor.dart' as _i12;
import 'package:firekart/core/performance/performance_moniter.dart' as _i43;
import 'package:firekart/core/storage/prefrences_storage.dart' as _i63;
import 'package:firekart/core/storage/secure_storage.dart' as _i64;
import 'package:firekart/data/error/app_error_model.dart' as _i13;
import 'package:firekart/data/error/network_error_handler.dart' as _i40;
import 'package:firekart/data/mapper/data_mapper.dart' as _i24;
import 'package:firekart/data/repository/auth_repository.dart' as _i69;
import 'package:firekart/data/repository/cart_repository.dart' as _i71;
import 'package:firekart/data/repository/order_repository.dart' as _i73;
import 'package:firekart/data/repository/product_repository.dart' as _i75;
import 'package:firekart/data/repository/user_repository.dart' as _i77;
import 'package:firekart/data/source/local/dao/cart_dao.dart' as _i60;
import 'package:firekart/data/source/local/dao/product_dao.dart' as _i46;
import 'package:firekart/data/source/local/db/firekart_database.dart' as _i31;
import 'package:firekart/data/source/local/local_storage.dart' as _i65;
import 'package:firekart/data/source/remote/api_service.dart' as _i67;
import 'package:firekart/di/module/database_module.dart' as _i80;
import 'package:firekart/di/module/firebase_module.dart' as _i78;
import 'package:firekart/di/module/network_module.dart' as _i79;
import 'package:firekart/di/module/storage_module.dart' as _i81;
import 'package:firekart/firebase_impl/analytics/firebase_analytics_impl.dart'
    as _i56;
import 'package:firekart/firebase_impl/crashlytics_service.dart' as _i61;
import 'package:firekart/firebase_impl/deeplink/firebase_deep_link.dart'
    as _i62;
import 'package:firekart/firebase_impl/performance/firebase_performance_moniter.dart'
    as _i44;
import 'package:firekart/presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i4;
import 'package:firekart/presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i7;
import 'package:firekart/presentation/features/app_settings/view_model/app_settings_view_model.dart'
    as _i14;
import 'package:firekart/presentation/features/cart/view_model/cart_view_model.dart'
    as _i15;
import 'package:firekart/presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i21;
import 'package:firekart/presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i23;
import 'package:firekart/presentation/features/home/viewmodel/home_viewmodel.dart'
    as _i32;
import 'package:firekart/presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i36;
import 'package:firekart/presentation/features/order/view_model/my_orders_cubit.dart'
    as _i37;
import 'package:firekart/presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i41;
import 'package:firekart/presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i45;
import 'package:firekart/presentation/features/product_detail/view_model/product_view_model.dart'
    as _i49;
import 'package:firekart/presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i10;
import 'package:firekart/presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i47;
import 'package:firekart/presentation/features/splash/view_model/splash_view_model.dart'
    as _i54;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i53;

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
    await _i3.DomainPackageModule().init(gh);
    final firebaseModule = _$FirebaseModule();
    final networkModule = _$NetworkModule();
    final databaseModule = _$DatabaseModule();
    final storageModule = _$StorageModule();
    gh.factory<_i4.AddAccountDetailsViewModel>(
        () => _i4.AddAccountDetailsViewModel(
              gh<_i5.SetAccountDetailsUseCase>(),
              gh<_i6.GetAccountDetailsUseCase>(),
            ));
    gh.factory<_i7.AddAddressViewModel>(() => _i7.AddAddressViewModel(
          gh<_i8.AddAddressUseCase>(),
          gh<_i9.EditAddressUseCase>(),
        ));
    gh.factory<_i10.AllProductCubit>(
        () => _i10.AllProductCubit(gh<_i11.GetAllProductsUseCase>()));
    gh.singleton<_i12.AppEncryptor>(_i12.AppEncryptor());
    gh.singleton<_i13.AppErrorModel>(_i13.AppErrorModel());
    gh.singleton<_i14.AppSettingsViewModel>(_i14.AppSettingsViewModel());
    gh.factory<_i15.CartViewModel>(() => _i15.CartViewModel(
          gh<_i16.ProductDeleteCartUseCase>(),
          gh<_i17.PlaceOrderUseCase>(),
          gh<_i18.GetCartStatusUseCase>(),
          gh<_i19.UpdateCartUseCase>(),
          gh<_i20.GetAddressUseCase>(),
        ));
    gh.factory<_i21.CheckStatusViewModel>(() =>
        _i21.CheckStatusViewModel(gh<_i22.GetUserLoggedInStatusUseCase>()));
    gh.factory<_i23.DashboardViewModel>(
        () => _i23.DashboardViewModel(gh<_i11.GetAllProductsUseCase>()));
    gh.singleton<_i24.DataMapper>(_i24.DataMapper());
    gh.singleton<_i25.FirebaseAnalytics>(firebaseModule.firebaseAnalytics);
    gh.singleton<_i26.FirebaseAuth>(firebaseModule.firebaseAuth);
    gh.singleton<_i27.FirebaseCrashlytics>(firebaseModule.firebaseCrashlytics);
    gh.singleton<_i28.FirebaseDynamicLinks>(
        firebaseModule.firebaseDynamicLinks);
    gh.singleton<_i29.FirebaseFirestore>(firebaseModule.firebaseFireStore);
    gh.singleton<_i30.FirebasePerformance>(firebaseModule.firebasePerformance);
    gh.singleton<_i31.FirekartDatabase>(
      _i31.FirekartDatabase(),
      dispose: (i) => i.closeDatabase(),
    );
    gh.factory<_i32.HomeScreenViewModel>(() => _i32.HomeScreenViewModel(
          gh<_i18.GetCartStatusUseCase>(),
          gh<_i33.StreamAccountDetailsUseCaseUseCase>(),
          gh<_i20.GetAddressUseCase>(),
          gh<_i34.LogoutUseCase>(),
        ));
    await gh.factoryAsync<_i35.HttpClient>(
      () => networkModule.sslHttpClient(),
      preResolve: true,
    );
    gh.factory<_i36.MyAddressViewModel>(() => _i36.MyAddressViewModel(
          gh<_i6.GetAccountDetailsUseCase>(),
          gh<_i5.SetAccountDetailsUseCase>(),
          gh<_i20.GetAddressUseCase>(),
          gh<_i9.EditAddressUseCase>(),
        ));
    gh.factory<_i37.MyOrdersCubit>(
        () => _i37.MyOrdersCubit(gh<_i38.GetAllOrdersUseCase>()));
    gh.singleton<_i39.NetworkConnectivity>(
      _i39.NetworkConnectivity(),
      dispose: (i) => i.dispose(),
    );
    gh.singleton<_i40.NetworkErrorHandler>(
        _i40.NetworkErrorHandler(gh<_i13.AppErrorModel>()));
    gh.factory<_i41.OtpLoginViewModel>(
        () => _i41.OtpLoginViewModel(gh<_i42.SendOTPUseCase>()));
    gh.singleton<_i43.PerformanceMonitor>(
        _i44.FirebasePerformanceMonitor(gh<_i30.FirebasePerformance>()));
    gh.factory<_i45.PhoneLoginViewModel>(() => _i45.PhoneLoginViewModel());
    gh.factory<_i46.ProductDao>(
        () => databaseModule.getProductDao(gh<_i31.FirekartDatabase>()));
    gh.factory<_i47.ProductSearchViewModel>(
        () => _i47.ProductSearchViewModel(gh<_i48.SearchProductsUseCase>()));
    gh.factory<_i49.ProductViewModel>(() => _i49.ProductViewModel(
          gh<_i50.GetItemsInCartUseCase>(),
          gh<_i51.ProductAddToCartUseCase>(),
          gh<_i18.GetCartStatusUseCase>(),
          gh<_i19.UpdateCartUseCase>(),
          gh<_i52.GetProductDetailsUseCase>(),
        ));
    await gh.factoryAsync<_i53.SharedPreferences>(
      () => storageModule.pref,
      preResolve: true,
    );
    gh.factory<_i54.SplashViewModel>(() => _i54.SplashViewModel());
    gh.factory<String>(
      () => networkModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i55.Analytics>(
        () => _i56.FirebaseAnalyticsImpl(gh<_i25.FirebaseAnalytics>()));
    gh.singleton<_i57.AppViewModel>(_i57.AppViewModel(
      gh<_i58.SetDeviceTokenUseCase>(),
      gh<_i22.GetUserLoggedInStatusUseCase>(),
      gh<_i59.PushNotificationHandlerUseCase>(),
      gh<_i39.NetworkConnectivity>(),
    ));
    gh.factory<_i60.CartDao>(
        () => databaseModule.getCartDao(gh<_i31.FirekartDatabase>()));
    gh.singleton<_i61.CrashlyticsService>(
        _i61.CrashlyticsService(gh<_i27.FirebaseCrashlytics>()));
    gh.factory<_i62.FirebaseDeepLink>(
        () => _i62.FirebaseDeepLink(gh<_i28.FirebaseDynamicLinks>()));
    gh.singleton<_i63.PreferencesStorage>(
        _i63.PreferencesStorage(gh<_i53.SharedPreferences>()));
    gh.singleton<_i64.SecureStorage>(_i64.SecureStorage(
      gh<_i63.PreferencesStorage>(),
      gh<_i12.AppEncryptor>(),
    ));
    gh.factory<_i65.LocalStorage>(() => _i65.LocalStorage(
          gh<_i63.PreferencesStorage>(),
          gh<_i64.SecureStorage>(),
        ));
    gh.factory<_i66.Dio>(() => networkModule.getDio(gh<_i65.LocalStorage>()));
    gh.factory<_i67.ApiService>(() => _i67.ApiService(
          gh<_i66.Dio>(),
          gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i68.AuthRepository>(() => _i69.AuthRepositoryImpl(
          gh<_i65.LocalStorage>(),
          gh<_i24.DataMapper>(),
          gh<_i67.ApiService>(),
        ));
    gh.factory<_i70.CartRepository>(() => _i71.CartRepositoryImpl(
          gh<_i24.DataMapper>(),
          gh<_i67.ApiService>(),
          gh<_i60.CartDao>(),
        ));
    gh.factory<_i72.OrderRepository>(() => _i73.OrderRepositoryImpl(
          gh<_i24.DataMapper>(),
          gh<_i67.ApiService>(),
          gh<_i60.CartDao>(),
        ));
    gh.factory<_i74.ProductRepository>(() => _i75.ProductRepositoryImpl(
          gh<_i24.DataMapper>(),
          gh<_i67.ApiService>(),
          gh<_i46.ProductDao>(),
          gh<_i39.NetworkConnectivity>(),
        ));
    gh.factory<_i76.UserRepository>(() => _i77.UserRepositoryImpl(
          gh<_i24.DataMapper>(),
          gh<_i67.ApiService>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i78.FirebaseModule {}

class _$NetworkModule extends _i79.NetworkModule {}

class _$DatabaseModule extends _i80.DatabaseModule {}

class _$StorageModule extends _i81.StorageModule {}
