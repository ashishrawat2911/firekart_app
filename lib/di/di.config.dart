// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i17;

import 'package:cloud_firestore/cloud_firestore.dart' as _i11;
import 'package:dio/dio.dart' as _i37;
import 'package:firebase_analytics/firebase_analytics.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i9;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i10;
import 'package:firebase_performance/firebase_performance.dart' as _i12;
import 'package:firekart/app/view_model/app_view_model.dart' as _i78;
import 'package:firekart/core/analytics/analytics.dart' as _i29;
import 'package:firekart/core/connectivity/network_connectivity.dart' as _i18;
import 'package:firekart/core/encrypt/app_encryptor.dart' as _i3;
import 'package:firekart/core/performance/performance_moniter.dart' as _i20;
import 'package:firekart/core/storage/prefrences_storage.dart' as _i34;
import 'package:firekart/core/storage/secure_storage.dart' as _i35;
import 'package:firekart/data/error/app_error_model.dart' as _i4;
import 'package:firekart/data/error/network_error_handler.dart' as _i19;
import 'package:firekart/data/mapper/data_mapper.dart' as _i6;
import 'package:firekart/data/repository/auth_repository.dart' as _i40;
import 'package:firekart/data/repository/cart_repository.dart' as _i42;
import 'package:firekart/data/repository/order_repository.dart' as _i48;
import 'package:firekart/data/repository/product_repository.dart' as _i53;
import 'package:firekart/data/repository/user_repository.dart' as _i59;
import 'package:firekart/data/source/local/dao/cart_dao.dart' as _i31;
import 'package:firekart/data/source/local/dao/product_dao.dart' as _i23;
import 'package:firekart/data/source/local/db/firekart_database.dart' as _i13;
import 'package:firekart/data/source/local/local_storage.dart' as _i36;
import 'package:firekart/data/source/remote/api_service.dart' as _i38;
import 'package:firekart/di/module/database_module.dart' as _i84;
import 'package:firekart/di/module/firebase_module.dart' as _i82;
import 'package:firekart/di/module/network_module.dart' as _i83;
import 'package:firekart/di/module/storage_module.dart' as _i85;
import 'package:firekart/domain/repository/auth_repository.dart' as _i39;
import 'package:firekart/domain/repository/cart_repository.dart' as _i41;
import 'package:firekart/domain/repository/order_repository.dart' as _i47;
import 'package:firekart/domain/repository/product_repository.dart' as _i52;
import 'package:firekart/domain/repository/user_repository.dart' as _i58;
import 'package:firekart/domain/usecases/add_address_usecase.dart' as _i60;
import 'package:firekart/domain/usecases/add_product_to_cart_usecase.dart'
    as _i50;
import 'package:firekart/domain/usecases/cart_usecase.dart' as _i43;
import 'package:firekart/domain/usecases/delete_product_from_cart_usecase.dart'
    as _i51;
import 'package:firekart/domain/usecases/edit_address_usecase.dart' as _i62;
import 'package:firekart/domain/usecases/get_account_details_usecase.dart'
    as _i63;
import 'package:firekart/domain/usecases/get_address_usecase.dart' as _i64;
import 'package:firekart/domain/usecases/get_all_orders_usecase.dart' as _i65;
import 'package:firekart/domain/usecases/get_all_product_usecase.dart' as _i66;
import 'package:firekart/domain/usecases/get_cart_status_use_case.dart' as _i44;
import 'package:firekart/domain/usecases/get_current_user_phone_number_usecase.dart'
    as _i14;
import 'package:firekart/domain/usecases/get_items_in_cart_usecase.dart'
    as _i15;
import 'package:firekart/domain/usecases/get_product_details_usecase.dart'
    as _i67;
import 'package:firekart/domain/usecases/get_user_data_status_usecase.dart'
    as _i16;
import 'package:firekart/domain/usecases/get_user_logged_in_status.dart'
    as _i45;
import 'package:firekart/domain/usecases/logout_usecase.dart' as _i46;
import 'package:firekart/domain/usecases/notification_handler_usecase.dart'
    as _i73;
import 'package:firekart/domain/usecases/place_order_usecase.dart' as _i49;
import 'package:firekart/domain/usecases/sample_use_case.dart' as _i28;
import 'package:firekart/domain/usecases/search_products_use_case.dart' as _i54;
import 'package:firekart/domain/usecases/send_otp_usecase.dart' as _i55;
import 'package:firekart/domain/usecases/set_account_details_usecase.dart'
    as _i24;
import 'package:firekart/domain/usecases/set_device_token_usecase.dart' as _i56;
import 'package:firekart/domain/usecases/set_user_profile_data_usecase.dart'
    as _i25;
import 'package:firekart/domain/usecases/stream_account_details_usecase.dart'
    as _i74;
import 'package:firekart/domain/usecases/update_cart_usecase.dart' as _i57;
import 'package:firekart/firebase_impl/analytics/firebase_analytics_impl.dart'
    as _i30;
import 'package:firekart/firebase_impl/crashlytics_service.dart' as _i32;
import 'package:firekart/firebase_impl/deeplink/firebase_deep_link.dart'
    as _i33;
import 'package:firekart/firebase_impl/performance/firebase_performance_moniter.dart'
    as _i21;
import 'package:firekart/presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i75;
import 'package:firekart/presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i76;
import 'package:firekart/presentation/features/app_settings/view_model/app_settings_view_model.dart'
    as _i5;
import 'package:firekart/presentation/features/cart/view_model/cart_view_model.dart'
    as _i79;
import 'package:firekart/presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i61;
import 'package:firekart/presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i80;
import 'package:firekart/presentation/features/home/viewmodel/home_viewmodel.dart'
    as _i81;
import 'package:firekart/presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i68;
import 'package:firekart/presentation/features/order/view_model/my_orders_cubit.dart'
    as _i69;
import 'package:firekart/presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i70;
import 'package:firekart/presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i22;
import 'package:firekart/presentation/features/product_detail/view_model/product_view_model.dart'
    as _i72;
import 'package:firekart/presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i77;
import 'package:firekart/presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i71;
import 'package:firekart/presentation/features/splash/view_model/splash_view_model.dart'
    as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i26;

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
    final firebaseModule = _$FirebaseModule();
    final networkModule = _$NetworkModule();
    final databaseModule = _$DatabaseModule();
    final storageModule = _$StorageModule();
    gh.singleton<_i3.AppEncryptor>(_i3.AppEncryptor());
    gh.singleton<_i4.AppErrorModel>(_i4.AppErrorModel());
    gh.singleton<_i5.AppSettingsViewModel>(_i5.AppSettingsViewModel());
    gh.singleton<_i6.DataMapper>(_i6.DataMapper());
    gh.singleton<_i7.FirebaseAnalytics>(firebaseModule.firebaseAnalytics);
    gh.singleton<_i8.FirebaseAuth>(firebaseModule.firebaseAuth);
    gh.singleton<_i9.FirebaseCrashlytics>(firebaseModule.firebaseCrashlytics);
    gh.singleton<_i10.FirebaseDynamicLinks>(
        firebaseModule.firebaseDynamicLinks);
    gh.singleton<_i11.FirebaseFirestore>(firebaseModule.firebaseFireStore);
    gh.singleton<_i12.FirebasePerformance>(firebaseModule.firebasePerformance);
    gh.singleton<_i13.FirekartDatabase>(
      _i13.FirekartDatabase(),
      dispose: (i) => i.closeDatabase(),
    );
    gh.factory<_i14.GetCurrentUserPhoneNumberUseCase>(
        () => _i14.GetCurrentUserPhoneNumberUseCase());
    gh.factory<_i15.GetItemsInCartUseCase>(() => _i15.GetItemsInCartUseCase());
    gh.factory<_i16.GetUserDataStatusUseCase>(
        () => _i16.GetUserDataStatusUseCase());
    await gh.factoryAsync<_i17.HttpClient>(
      () => networkModule.sslHttpClient(),
      preResolve: true,
    );
    gh.singleton<_i18.NetworkConnectivity>(
      _i18.NetworkConnectivity(),
      dispose: (i) => i.dispose(),
    );
    gh.singleton<_i19.NetworkErrorHandler>(
        _i19.NetworkErrorHandler(gh<_i4.AppErrorModel>()));
    gh.singleton<_i20.PerformanceMonitor>(
        _i21.FirebasePerformanceMonitor(gh<_i12.FirebasePerformance>()));
    gh.factory<_i22.PhoneLoginViewModel>(() => _i22.PhoneLoginViewModel());
    gh.factory<_i23.ProductDao>(
        () => databaseModule.getProductDao(gh<_i13.FirekartDatabase>()));
    gh.factory<_i24.SetAccountDetailsUseCase>(
        () => _i24.SetAccountDetailsUseCase());
    gh.factory<_i25.SetProfileUserDataUseCase>(
        () => _i25.SetProfileUserDataUseCase());
    await gh.factoryAsync<_i26.SharedPreferences>(
      () => storageModule.pref,
      preResolve: true,
    );
    gh.factory<_i27.SplashViewModel>(() => _i27.SplashViewModel());
    gh.factory<String>(
      () => networkModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i28.UseCase>(() => _i28.UseCase());
    gh.factory<_i29.Analytics>(
        () => _i30.FirebaseAnalyticsImpl(gh<_i7.FirebaseAnalytics>()));
    gh.factory<_i31.CartDao>(
        () => databaseModule.getCartDao(gh<_i13.FirekartDatabase>()));
    gh.singleton<_i32.CrashlyticsService>(
        _i32.CrashlyticsService(gh<_i9.FirebaseCrashlytics>()));
    gh.factory<_i33.FirebaseDeepLink>(
        () => _i33.FirebaseDeepLink(gh<_i10.FirebaseDynamicLinks>()));
    gh.singleton<_i34.PreferencesStorage>(
        _i34.PreferencesStorage(gh<_i26.SharedPreferences>()));
    gh.singleton<_i35.SecureStorage>(_i35.SecureStorage(
      gh<_i34.PreferencesStorage>(),
      gh<_i3.AppEncryptor>(),
    ));
    gh.factory<_i36.LocalStorage>(() => _i36.LocalStorage(
          gh<_i34.PreferencesStorage>(),
          gh<_i35.SecureStorage>(),
        ));
    gh.factory<_i37.Dio>(() => networkModule.getDio(gh<_i36.LocalStorage>()));
    gh.factory<_i38.ApiService>(() => _i38.ApiService(
          gh<_i37.Dio>(),
          gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i39.AuthRepository>(() => _i40.AuthRepositoryImpl(
          gh<_i36.LocalStorage>(),
          gh<_i6.DataMapper>(),
          gh<_i38.ApiService>(),
        ));
    gh.factory<_i41.CartRepository>(() => _i42.CartRepositoryImpl(
          gh<_i6.DataMapper>(),
          gh<_i38.ApiService>(),
          gh<_i31.CartDao>(),
        ));
    gh.singleton<_i43.CartUseCase>(_i43.CartUseCase(gh<_i41.CartRepository>()));
    gh.factory<_i44.GetCartStatusUseCase>(
        () => _i44.GetCartStatusUseCase(gh<_i41.CartRepository>()));
    gh.factory<_i45.GetUserLoggedInStatusUseCase>(
        () => _i45.GetUserLoggedInStatusUseCase(gh<_i39.AuthRepository>()));
    gh.factory<_i46.LogoutUseCase>(
        () => _i46.LogoutUseCase(gh<_i39.AuthRepository>()));
    gh.factory<_i47.OrderRepository>(() => _i48.OrderRepositoryImpl(
          gh<_i6.DataMapper>(),
          gh<_i38.ApiService>(),
          gh<_i31.CartDao>(),
        ));
    gh.factory<_i49.PlaceOrderUseCase>(
        () => _i49.PlaceOrderUseCase(gh<_i47.OrderRepository>()));
    gh.factory<_i50.ProductAddToCartUseCase>(
        () => _i50.ProductAddToCartUseCase(gh<_i41.CartRepository>()));
    gh.factory<_i51.ProductDeleteCartUseCase>(
        () => _i51.ProductDeleteCartUseCase(gh<_i41.CartRepository>()));
    gh.factory<_i52.ProductRepository>(() => _i53.ProductRepositoryImpl(
          gh<_i6.DataMapper>(),
          gh<_i38.ApiService>(),
          gh<_i23.ProductDao>(),
          gh<_i18.NetworkConnectivity>(),
        ));
    gh.factory<_i54.SearchProductsUseCase>(
        () => _i54.SearchProductsUseCase(gh<_i52.ProductRepository>()));
    gh.factory<_i55.SendOTPUseCase>(
        () => _i55.SendOTPUseCase(gh<_i39.AuthRepository>()));
    gh.factory<_i56.SetDeviceTokenUseCase>(
        () => _i56.SetDeviceTokenUseCase(gh<_i39.AuthRepository>()));
    gh.factory<_i57.UpdateCartUseCase>(
        () => _i57.UpdateCartUseCase(gh<_i41.CartRepository>()));
    gh.factory<_i58.UserRepository>(() => _i59.UserRepositoryImpl(
          gh<_i6.DataMapper>(),
          gh<_i38.ApiService>(),
        ));
    gh.factory<_i60.AddAddressUseCase>(
        () => _i60.AddAddressUseCase(gh<_i58.UserRepository>()));
    gh.factory<_i61.CheckStatusViewModel>(() =>
        _i61.CheckStatusViewModel(gh<_i45.GetUserLoggedInStatusUseCase>()));
    gh.factory<_i62.EditAddressUseCase>(
        () => _i62.EditAddressUseCase(gh<_i58.UserRepository>()));
    gh.factory<_i63.GetAccountDetailsUseCase>(
        () => _i63.GetAccountDetailsUseCase(gh<_i58.UserRepository>()));
    gh.factory<_i64.GetAddressUseCase>(
        () => _i64.GetAddressUseCase(gh<_i58.UserRepository>()));
    gh.factory<_i65.GetAllOrdersUseCase>(
        () => _i65.GetAllOrdersUseCase(gh<_i47.OrderRepository>()));
    gh.factory<_i66.GetAllProductsUseCase>(
        () => _i66.GetAllProductsUseCase(gh<_i52.ProductRepository>()));
    gh.factory<_i67.GetProductDetailsUseCase>(
        () => _i67.GetProductDetailsUseCase(gh<_i52.ProductRepository>()));
    gh.factory<_i68.MyAddressViewModel>(() => _i68.MyAddressViewModel(
          gh<_i63.GetAccountDetailsUseCase>(),
          gh<_i24.SetAccountDetailsUseCase>(),
          gh<_i64.GetAddressUseCase>(),
          gh<_i62.EditAddressUseCase>(),
        ));
    gh.factory<_i69.MyOrdersCubit>(
        () => _i69.MyOrdersCubit(gh<_i65.GetAllOrdersUseCase>()));
    gh.factory<_i70.OtpLoginViewModel>(
        () => _i70.OtpLoginViewModel(gh<_i55.SendOTPUseCase>()));
    gh.factory<_i71.ProductSearchViewModel>(
        () => _i71.ProductSearchViewModel(gh<_i54.SearchProductsUseCase>()));
    gh.factory<_i72.ProductViewModel>(() => _i72.ProductViewModel(
          gh<_i15.GetItemsInCartUseCase>(),
          gh<_i50.ProductAddToCartUseCase>(),
          gh<_i44.GetCartStatusUseCase>(),
          gh<_i57.UpdateCartUseCase>(),
          gh<_i67.GetProductDetailsUseCase>(),
        ));
    gh.factory<_i73.PushNotificationHandlerUseCase>(() =>
        _i73.PushNotificationHandlerUseCase(gh<_i56.SetDeviceTokenUseCase>()));
    gh.factory<_i74.StreamAccountDetailsUseCaseUseCase>(() =>
        _i74.StreamAccountDetailsUseCaseUseCase(gh<_i58.UserRepository>()));
    gh.factory<_i75.AddAccountDetailsViewModel>(
        () => _i75.AddAccountDetailsViewModel(
              gh<_i24.SetAccountDetailsUseCase>(),
              gh<_i63.GetAccountDetailsUseCase>(),
            ));
    gh.factory<_i76.AddAddressViewModel>(() => _i76.AddAddressViewModel(
          gh<_i60.AddAddressUseCase>(),
          gh<_i62.EditAddressUseCase>(),
        ));
    gh.factory<_i77.AllProductCubit>(
        () => _i77.AllProductCubit(gh<_i66.GetAllProductsUseCase>()));
    gh.singleton<_i78.AppViewModel>(_i78.AppViewModel(
      gh<_i56.SetDeviceTokenUseCase>(),
      gh<_i45.GetUserLoggedInStatusUseCase>(),
      gh<_i73.PushNotificationHandlerUseCase>(),
      gh<_i18.NetworkConnectivity>(),
    ));
    gh.factory<_i79.CartViewModel>(() => _i79.CartViewModel(
          gh<_i51.ProductDeleteCartUseCase>(),
          gh<_i49.PlaceOrderUseCase>(),
          gh<_i44.GetCartStatusUseCase>(),
          gh<_i57.UpdateCartUseCase>(),
          gh<_i64.GetAddressUseCase>(),
        ));
    gh.factory<_i80.DashboardViewModel>(
        () => _i80.DashboardViewModel(gh<_i66.GetAllProductsUseCase>()));
    gh.factory<_i81.HomeScreenViewModel>(() => _i81.HomeScreenViewModel(
          gh<_i44.GetCartStatusUseCase>(),
          gh<_i74.StreamAccountDetailsUseCaseUseCase>(),
          gh<_i64.GetAddressUseCase>(),
          gh<_i46.LogoutUseCase>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i82.FirebaseModule {}

class _$NetworkModule extends _i83.NetworkModule {}

class _$DatabaseModule extends _i84.DatabaseModule {}

class _$StorageModule extends _i85.StorageModule {}
