// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i18;

import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:dio/dio.dart' as _i36;
import 'package:firebase_analytics/firebase_analytics.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i9;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i10;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i11;
import 'package:firebase_performance/firebase_performance.dart' as _i13;
import 'package:firekart/app/view_model/app_view_model.dart' as _i6;
import 'package:firekart/core/analytics/analytics.dart' as _i28;
import 'package:firekart/core/encrypt/app_encryptor.dart' as _i3;
import 'package:firekart/core/performance/performance_moniter.dart' as _i20;
import 'package:firekart/core/storage/prefrences_storage.dart' as _i33;
import 'package:firekart/core/storage/secure_storage.dart' as _i34;
import 'package:firekart/data/error/app_error_model.dart' as _i4;
import 'package:firekart/data/error/network_error_handler.dart' as _i19;
import 'package:firekart/data/mapper/data_mapper.dart' as _i7;
import 'package:firekart/data/repository/auth_repository.dart' as _i39;
import 'package:firekart/data/repository/cart_repository.dart' as _i41;
import 'package:firekart/data/repository/order_repository.dart' as _i47;
import 'package:firekart/data/repository/product_repository.dart' as _i52;
import 'package:firekart/data/repository/user_repository.dart' as _i57;
import 'package:firekart/data/source/local/dao/cart_dao.dart' as _i30;
import 'package:firekart/data/source/local/db/firekart_database.dart' as _i14;
import 'package:firekart/data/source/local/local_storage.dart' as _i35;
import 'package:firekart/data/source/remote/api_service.dart' as _i37;
import 'package:firekart/di/module/database_module.dart' as _i80;
import 'package:firekart/di/module/firebase_module.dart' as _i77;
import 'package:firekart/di/module/network_module.dart' as _i78;
import 'package:firekart/di/module/storage_module.dart' as _i79;
import 'package:firekart/domain/repository/auth_repository.dart' as _i38;
import 'package:firekart/domain/repository/cart_repository.dart' as _i40;
import 'package:firekart/domain/repository/order_repository.dart' as _i46;
import 'package:firekart/domain/repository/product_repository.dart' as _i51;
import 'package:firekart/domain/repository/user_repository.dart' as _i56;
import 'package:firekart/domain/usecases/add_address_usecase.dart' as _i58;
import 'package:firekart/domain/usecases/add_product_to_cart_usecase.dart'
    as _i49;
import 'package:firekart/domain/usecases/cart_usecase.dart' as _i42;
import 'package:firekart/domain/usecases/delete_product_from_cart_usecase.dart'
    as _i50;
import 'package:firekart/domain/usecases/edit_address_usecase.dart' as _i60;
import 'package:firekart/domain/usecases/get_account_details_usecase.dart'
    as _i61;
import 'package:firekart/domain/usecases/get_address_usecase.dart' as _i62;
import 'package:firekart/domain/usecases/get_all_orders_usecase.dart' as _i63;
import 'package:firekart/domain/usecases/get_all_product_usecase.dart' as _i64;
import 'package:firekart/domain/usecases/get_cart_status_use_case.dart' as _i43;
import 'package:firekart/domain/usecases/get_current_user_phone_number_usecase.dart'
    as _i15;
import 'package:firekart/domain/usecases/get_items_in_cart_usecase.dart'
    as _i16;
import 'package:firekart/domain/usecases/get_user_data_status_usecase.dart'
    as _i17;
import 'package:firekart/domain/usecases/get_user_logged_in_status.dart'
    as _i44;
import 'package:firekart/domain/usecases/logout_usecase.dart' as _i45;
import 'package:firekart/domain/usecases/place_order_usecase.dart' as _i48;
import 'package:firekart/domain/usecases/sample_use_case.dart' as _i27;
import 'package:firekart/domain/usecases/search_products_use_case.dart' as _i53;
import 'package:firekart/domain/usecases/send_otp_usecase.dart' as _i54;
import 'package:firekart/domain/usecases/set_account_details_usecase.dart'
    as _i23;
import 'package:firekart/domain/usecases/set_user_profile_data_usecase.dart'
    as _i24;
import 'package:firekart/domain/usecases/stream_account_details_usecase.dart'
    as _i70;
import 'package:firekart/domain/usecases/update_cart_usecase.dart' as _i55;
import 'package:firekart/firebase_impl/analytics/firebase_analytics_impl.dart'
    as _i29;
import 'package:firekart/firebase_impl/crashlytics_service.dart' as _i31;
import 'package:firekart/firebase_impl/deeplink/firebase_deep_link.dart'
    as _i32;
import 'package:firekart/firebase_impl/performance/firebase_performance_moniter.dart'
    as _i21;
import 'package:firekart/presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i71;
import 'package:firekart/presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i72;
import 'package:firekart/presentation/features/app_settings/view_model/app_settings_view_model.dart'
    as _i5;
import 'package:firekart/presentation/features/cart/view_model/cart_view_model.dart'
    as _i74;
import 'package:firekart/presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i59;
import 'package:firekart/presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i75;
import 'package:firekart/presentation/features/home/viewmodel/home_viewmodel.dart'
    as _i76;
import 'package:firekart/presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i65;
import 'package:firekart/presentation/features/order/view_model/my_orders_cubit.dart'
    as _i66;
import 'package:firekart/presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i67;
import 'package:firekart/presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i22;
import 'package:firekart/presentation/features/product_detail/view_model/product_view_model.dart'
    as _i69;
import 'package:firekart/presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i73;
import 'package:firekart/presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i68;
import 'package:firekart/presentation/features/splash/view_model/splash_view_model.dart'
    as _i26;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i25;

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
    final storageModule = _$StorageModule();
    final databaseModule = _$DatabaseModule();
    gh.singleton<_i3.AppEncryptor>(_i3.AppEncryptor());
    gh.singleton<_i4.AppErrorModel>(_i4.AppErrorModel());
    gh.singleton<_i5.AppSettingsViewModel>(_i5.AppSettingsViewModel());
    gh.singleton<_i6.AppViewModel>(_i6.AppViewModel());
    gh.singleton<_i7.DataMapper>(_i7.DataMapper());
    gh.singleton<_i8.FirebaseAnalytics>(firebaseModule.firebaseAnalytics);
    gh.singleton<_i9.FirebaseAuth>(firebaseModule.firebaseAuth);
    gh.singleton<_i10.FirebaseCrashlytics>(firebaseModule.firebaseCrashlytics);
    gh.singleton<_i11.FirebaseDynamicLinks>(
        firebaseModule.firebaseDynamicLinks);
    gh.singleton<_i12.FirebaseFirestore>(firebaseModule.firebaseFireStore);
    gh.singleton<_i13.FirebasePerformance>(firebaseModule.firebasePerformance);
    gh.singleton<_i14.FirekartDatabase>(_i14.FirekartDatabase());
    gh.factory<_i15.GetCurrentUserPhoneNumberUseCase>(
        () => _i15.GetCurrentUserPhoneNumberUseCase());
    gh.factory<_i16.GetItemsInCartUseCase>(() => _i16.GetItemsInCartUseCase());
    gh.factory<_i17.GetUserDataStatusUseCase>(
        () => _i17.GetUserDataStatusUseCase());
    await gh.factoryAsync<_i18.HttpClient>(
      () => networkModule.sslHttpClient(),
      preResolve: true,
    );
    gh.singleton<_i19.NetworkErrorHandler>(
        _i19.NetworkErrorHandler(gh<_i4.AppErrorModel>()));
    gh.singleton<_i20.PerformanceMonitor>(
        _i21.FirebasePerformanceMonitor(gh<_i13.FirebasePerformance>()));
    gh.factory<_i22.PhoneLoginViewModel>(() => _i22.PhoneLoginViewModel());
    gh.factory<_i23.SetAccountDetailsUseCase>(
        () => _i23.SetAccountDetailsUseCase());
    gh.factory<_i24.SetProfileUserDataUseCase>(
        () => _i24.SetProfileUserDataUseCase());
    await gh.factoryAsync<_i25.SharedPreferences>(
      () => storageModule.pref,
      preResolve: true,
    );
    gh.factory<_i26.SplashViewModel>(() => _i26.SplashViewModel());
    gh.factory<String>(
      () => networkModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i27.UseCase>(() => _i27.UseCase());
    gh.factory<_i28.Analytics>(
        () => _i29.FirebaseAnalyticsImpl(gh<_i8.FirebaseAnalytics>()));
    gh.factory<_i30.CartDao>(
        () => databaseModule.getCartDao(gh<_i14.FirekartDatabase>()));
    gh.singleton<_i31.CrashlyticsService>(
        _i31.CrashlyticsService(gh<_i10.FirebaseCrashlytics>()));
    gh.factory<_i32.FirebaseDeepLink>(
        () => _i32.FirebaseDeepLink(gh<_i11.FirebaseDynamicLinks>()));
    gh.singleton<_i33.PreferencesStorage>(
        _i33.PreferencesStorage(gh<_i25.SharedPreferences>()));
    gh.singleton<_i34.SecureStorage>(_i34.SecureStorage(
      gh<_i33.PreferencesStorage>(),
      gh<_i3.AppEncryptor>(),
    ));
    gh.factory<_i35.LocalStorage>(() => _i35.LocalStorage(
          gh<_i33.PreferencesStorage>(),
          gh<_i34.SecureStorage>(),
        ));
    gh.factory<_i36.Dio>(() => networkModule.getDio(gh<_i35.LocalStorage>()));
    gh.factory<_i37.ApiService>(() => _i37.ApiService(
          gh<_i36.Dio>(),
          gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i38.AuthRepository>(() => _i39.AuthRepositoryImpl(
          gh<_i35.LocalStorage>(),
          gh<_i7.DataMapper>(),
          gh<_i37.ApiService>(),
        ));
    gh.factory<_i40.CartRepository>(() => _i41.CartRepositoryImpl(
          gh<_i7.DataMapper>(),
          gh<_i37.ApiService>(),
          gh<_i30.CartDao>(),
        ));
    gh.singleton<_i42.CartUseCase>(_i42.CartUseCase(gh<_i40.CartRepository>()));
    gh.factory<_i43.GetCartStatusUseCase>(
        () => _i43.GetCartStatusUseCase(gh<_i40.CartRepository>()));
    gh.factory<_i44.GetUserLoggedInStatusUseCase>(
        () => _i44.GetUserLoggedInStatusUseCase(gh<_i38.AuthRepository>()));
    gh.factory<_i45.LogoutUseCase>(
        () => _i45.LogoutUseCase(gh<_i38.AuthRepository>()));
    gh.factory<_i46.OrderRepository>(() => _i47.OrderRepositoryImpl(
          gh<_i7.DataMapper>(),
          gh<_i37.ApiService>(),
        ));
    gh.factory<_i48.PlaceOrderUseCase>(
        () => _i48.PlaceOrderUseCase(gh<_i46.OrderRepository>()));
    gh.factory<_i49.ProductAddToCartUseCase>(
        () => _i49.ProductAddToCartUseCase(gh<_i40.CartRepository>()));
    gh.factory<_i50.ProductDeleteCartUseCase>(
        () => _i50.ProductDeleteCartUseCase(gh<_i40.CartRepository>()));
    gh.factory<_i51.ProductRepository>(() => _i52.ProductRepositoryImpl(
          gh<_i7.DataMapper>(),
          gh<_i37.ApiService>(),
        ));
    gh.factory<_i53.SearchProductsUseCase>(
        () => _i53.SearchProductsUseCase(gh<_i51.ProductRepository>()));
    gh.factory<_i54.SendOTPUseCase>(
        () => _i54.SendOTPUseCase(gh<_i38.AuthRepository>()));
    gh.factory<_i55.UpdateCartUseCase>(
        () => _i55.UpdateCartUseCase(gh<_i40.CartRepository>()));
    gh.factory<_i56.UserRepository>(() => _i57.UserRepositoryImpl(
          gh<_i7.DataMapper>(),
          gh<_i37.ApiService>(),
        ));
    gh.factory<_i58.AddAddressUseCase>(
        () => _i58.AddAddressUseCase(gh<_i56.UserRepository>()));
    gh.factory<_i59.CheckStatusViewModel>(() =>
        _i59.CheckStatusViewModel(gh<_i44.GetUserLoggedInStatusUseCase>()));
    gh.factory<_i60.EditAddressUseCase>(
        () => _i60.EditAddressUseCase(gh<_i56.UserRepository>()));
    gh.factory<_i61.GetAccountDetailsUseCase>(
        () => _i61.GetAccountDetailsUseCase(gh<_i56.UserRepository>()));
    gh.factory<_i62.GetAddressUseCase>(
        () => _i62.GetAddressUseCase(gh<_i56.UserRepository>()));
    gh.factory<_i63.GetAllOrdersUseCase>(
        () => _i63.GetAllOrdersUseCase(gh<_i46.OrderRepository>()));
    gh.factory<_i64.GetAllProductsUseCase>(
        () => _i64.GetAllProductsUseCase(gh<_i51.ProductRepository>()));
    gh.factory<_i65.MyAddressViewModel>(() => _i65.MyAddressViewModel(
          gh<_i61.GetAccountDetailsUseCase>(),
          gh<_i23.SetAccountDetailsUseCase>(),
          gh<_i62.GetAddressUseCase>(),
          gh<_i60.EditAddressUseCase>(),
        ));
    gh.factory<_i66.MyOrdersCubit>(
        () => _i66.MyOrdersCubit(gh<_i63.GetAllOrdersUseCase>()));
    gh.factory<_i67.OtpLoginViewModel>(
        () => _i67.OtpLoginViewModel(gh<_i54.SendOTPUseCase>()));
    gh.factory<_i68.ProductSearchViewModel>(
        () => _i68.ProductSearchViewModel(gh<_i53.SearchProductsUseCase>()));
    gh.factory<_i69.ProductViewModel>(() => _i69.ProductViewModel(
          gh<_i16.GetItemsInCartUseCase>(),
          gh<_i49.ProductAddToCartUseCase>(),
          gh<_i43.GetCartStatusUseCase>(),
          gh<_i55.UpdateCartUseCase>(),
        ));
    gh.factory<_i70.StreamAccountDetailsUseCaseUseCase>(() =>
        _i70.StreamAccountDetailsUseCaseUseCase(gh<_i56.UserRepository>()));
    gh.factory<_i71.AddAccountDetailsViewModel>(
        () => _i71.AddAccountDetailsViewModel(
              gh<_i23.SetAccountDetailsUseCase>(),
              gh<_i61.GetAccountDetailsUseCase>(),
            ));
    gh.factory<_i72.AddAddressViewModel>(() => _i72.AddAddressViewModel(
          gh<_i58.AddAddressUseCase>(),
          gh<_i60.EditAddressUseCase>(),
        ));
    gh.factory<_i73.AllProductCubit>(
        () => _i73.AllProductCubit(gh<_i64.GetAllProductsUseCase>()));
    gh.factory<_i74.CartViewModel>(() => _i74.CartViewModel(
          gh<_i50.ProductDeleteCartUseCase>(),
          gh<_i48.PlaceOrderUseCase>(),
          gh<_i43.GetCartStatusUseCase>(),
          gh<_i55.UpdateCartUseCase>(),
          gh<_i62.GetAddressUseCase>(),
        ));
    gh.factory<_i75.DashboardViewModel>(
        () => _i75.DashboardViewModel(gh<_i64.GetAllProductsUseCase>()));
    gh.factory<_i76.HomeScreenViewModel>(() => _i76.HomeScreenViewModel(
          gh<_i43.GetCartStatusUseCase>(),
          gh<_i70.StreamAccountDetailsUseCaseUseCase>(),
          gh<_i62.GetAddressUseCase>(),
          gh<_i45.LogoutUseCase>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i77.FirebaseModule {}

class _$NetworkModule extends _i78.NetworkModule {}

class _$StorageModule extends _i79.StorageModule {}

class _$DatabaseModule extends _i80.DatabaseModule {}
