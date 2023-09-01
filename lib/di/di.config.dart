// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i17;

import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:dio/dio.dart' as _i34;
import 'package:firebase_analytics/firebase_analytics.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i9;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i10;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i11;
import 'package:firebase_performance/firebase_performance.dart' as _i13;
import 'package:firekart/app/view_model/app_view_model.dart' as _i6;
import 'package:firekart/core/analytics/analytics.dart' as _i27;
import 'package:firekart/core/encrypt/app_encryptor.dart' as _i3;
import 'package:firekart/core/performance/performance_moniter.dart' as _i19;
import 'package:firekart/core/storage/prefrences_storage.dart' as _i31;
import 'package:firekart/core/storage/secure_storage.dart' as _i32;
import 'package:firekart/data/app_error_model.dart' as _i4;
import 'package:firekart/data/default_network_error_handler.dart' as _i18;
import 'package:firekart/data/mapper/data_mapper.dart' as _i7;
import 'package:firekart/data/repository/firekart_repository.dart' as _i37;
import 'package:firekart/data/source/local/local_storage.dart' as _i33;
import 'package:firekart/data/source/remote/api_service.dart' as _i35;
import 'package:firekart/di/module/firebase_module.dart' as _i67;
import 'package:firekart/di/module/network_module.dart' as _i68;
import 'package:firekart/di/module/storage_module.dart' as _i69;
import 'package:firekart/domain/repository/firekart_repository.dart' as _i36;
import 'package:firekart/domain/usecases/add_address_usecase.dart' as _i54;
import 'package:firekart/domain/usecases/add_product_to_cart_usecase.dart'
    as _i47;
import 'package:firekart/domain/usecases/cart_usecase.dart' as _i56;
import 'package:firekart/domain/usecases/delete_product_from_cart_usecase.dart'
    as _i48;
import 'package:firekart/domain/usecases/edit_address_usecase.dart' as _i60;
import 'package:firekart/domain/usecases/get_account_details_usecase.dart'
    as _i38;
import 'package:firekart/domain/usecases/get_address_usecase.dart' as _i39;
import 'package:firekart/domain/usecases/get_all_orders_usecase.dart' as _i40;
import 'package:firekart/domain/usecases/get_all_product_usecase.dart' as _i41;
import 'package:firekart/domain/usecases/get_cart_status_use_case.dart' as _i42;
import 'package:firekart/domain/usecases/get_current_user_phone_number_usecase.dart'
    as _i14;
import 'package:firekart/domain/usecases/get_items_in_cart_usecase.dart'
    as _i15;
import 'package:firekart/domain/usecases/get_user_data_status_usecase.dart'
    as _i16;
import 'package:firekart/domain/usecases/get_user_logged_in_status.dart'
    as _i43;
import 'package:firekart/domain/usecases/logout_usecase.dart' as _i44;
import 'package:firekart/domain/usecases/place_order_usecase.dart' as _i46;
import 'package:firekart/domain/usecases/sample_use_case.dart' as _i26;
import 'package:firekart/domain/usecases/search_products_use_case.dart' as _i49;
import 'package:firekart/domain/usecases/send_otp_usecase.dart' as _i50;
import 'package:firekart/domain/usecases/set_account_details_usecase.dart'
    as _i22;
import 'package:firekart/domain/usecases/set_user_profile_data_usecase.dart'
    as _i23;
import 'package:firekart/domain/usecases/stream_account_details_usecase.dart'
    as _i51;
import 'package:firekart/domain/usecases/update_cart_usecase.dart' as _i52;
import 'package:firekart/firebase_impl/analytics/firebase_analytics_impl.dart'
    as _i28;
import 'package:firekart/firebase_impl/crashlytics_service.dart' as _i29;
import 'package:firekart/firebase_impl/deeplink/firebase_deep_link.dart'
    as _i30;
import 'package:firekart/firebase_impl/performance/firebase_performance_moniter.dart'
    as _i20;
import 'package:firekart/presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i53;
import 'package:firekart/presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i66;
import 'package:firekart/presentation/features/app_settings/view_model/app_settings_view_model.dart'
    as _i5;
import 'package:firekart/presentation/features/cart/view_model/cart_view_model.dart'
    as _i57;
import 'package:firekart/presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i58;
import 'package:firekart/presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i59;
import 'package:firekart/presentation/features/home/viewmodel/home_viewmodel.dart'
    as _i61;
import 'package:firekart/presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i62;
import 'package:firekart/presentation/features/order/view_model/my_orders_cubit.dart'
    as _i45;
import 'package:firekart/presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i63;
import 'package:firekart/presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i21;
import 'package:firekart/presentation/features/product_detail/view_model/product_view_model.dart'
    as _i65;
import 'package:firekart/presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i55;
import 'package:firekart/presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i64;
import 'package:firekart/presentation/features/splash/view_model/splash_view_model.dart'
    as _i25;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i24;

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
    gh.factory<_i14.GetCurrentUserPhoneNumberUseCase>(
        () => _i14.GetCurrentUserPhoneNumberUseCase());
    gh.factory<_i15.GetItemsInCartUseCase>(() => _i15.GetItemsInCartUseCase());
    gh.factory<_i16.GetUserDataStatusUseCase>(
        () => _i16.GetUserDataStatusUseCase());
    await gh.factoryAsync<_i17.HttpClient>(
      () => networkModule.sslHttpClient(),
      preResolve: true,
    );
    gh.singleton<_i18.NetworkErrorHandler>(
        _i18.NetworkErrorHandler(gh<_i4.AppErrorModel>()));
    gh.singleton<_i19.PerformanceMonitor>(
        _i20.FirebasePerformanceMonitor(gh<_i13.FirebasePerformance>()));
    gh.factory<_i21.PhoneLoginViewModel>(() => _i21.PhoneLoginViewModel());
    gh.factory<_i22.SetAccountDetailsUseCase>(
        () => _i22.SetAccountDetailsUseCase());
    gh.factory<_i23.SetProfileUserDataUseCase>(
        () => _i23.SetProfileUserDataUseCase());
    await gh.factoryAsync<_i24.SharedPreferences>(
      () => storageModule.pref,
      preResolve: true,
    );
    gh.factory<_i25.SplashViewModel>(() => _i25.SplashViewModel());
    gh.factory<String>(
      () => networkModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i26.UseCase>(() => _i26.UseCase());
    gh.factory<_i27.Analytics>(
        () => _i28.FirebaseAnalyticsImpl(gh<_i8.FirebaseAnalytics>()));
    gh.singleton<_i29.CrashlyticsService>(
        _i29.CrashlyticsService(gh<_i10.FirebaseCrashlytics>()));
    gh.factory<_i30.FirebaseDeepLink>(
        () => _i30.FirebaseDeepLink(gh<_i11.FirebaseDynamicLinks>()));
    gh.singleton<_i31.PreferencesStorage>(
        _i31.PreferencesStorage(gh<_i24.SharedPreferences>()));
    gh.singleton<_i32.SecureStorage>(_i32.SecureStorage(
      gh<_i31.PreferencesStorage>(),
      gh<_i3.AppEncryptor>(),
    ));
    gh.factory<_i33.LocalStorage>(() => _i33.LocalStorage(
          gh<_i31.PreferencesStorage>(),
          gh<_i32.SecureStorage>(),
        ));
    gh.factory<_i34.Dio>(() => networkModule.getDio(gh<_i33.LocalStorage>()));
    gh.factory<_i35.ApiService>(() => _i35.ApiService(
          gh<_i34.Dio>(),
          gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i36.FirekartRepository>(() => _i37.FirekartRepositoryImpl(
          gh<_i33.LocalStorage>(),
          gh<_i7.DataMapper>(),
          gh<_i18.NetworkErrorHandler>(),
          gh<_i35.ApiService>(),
        ));
    gh.factory<_i38.GetAccountDetailsUseCase>(
        () => _i38.GetAccountDetailsUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i39.GetAddressUseCase>(
        () => _i39.GetAddressUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i40.GetAllOrdersUseCase>(
        () => _i40.GetAllOrdersUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i41.GetAllProductsUseCase>(
        () => _i41.GetAllProductsUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i42.GetCartStatusUseCase>(
        () => _i42.GetCartStatusUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i43.GetUserLoggedInStatusUseCase>(
        () => _i43.GetUserLoggedInStatusUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i44.LogoutUseCase>(
        () => _i44.LogoutUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i45.MyOrdersCubit>(
        () => _i45.MyOrdersCubit(gh<_i40.GetAllOrdersUseCase>()));
    gh.factory<_i46.PlaceOrderUseCase>(
        () => _i46.PlaceOrderUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i47.ProductAddToCartUseCase>(
        () => _i47.ProductAddToCartUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i48.ProductDeleteCartUseCase>(
        () => _i48.ProductDeleteCartUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i49.SearchProductsUseCase>(
        () => _i49.SearchProductsUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i50.SendOTPUseCase>(
        () => _i50.SendOTPUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i51.StreamAccountDetailsUseCaseUseCase>(() =>
        _i51.StreamAccountDetailsUseCaseUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i52.UpdateCartUseCase>(
        () => _i52.UpdateCartUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i53.AddAccountDetailsViewModel>(
        () => _i53.AddAccountDetailsViewModel(
              gh<_i22.SetAccountDetailsUseCase>(),
              gh<_i38.GetAccountDetailsUseCase>(),
            ));
    gh.factory<_i54.AddAddressUseCase>(
        () => _i54.AddAddressUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i55.AllProductCubit>(
        () => _i55.AllProductCubit(gh<_i41.GetAllProductsUseCase>()));
    gh.singleton<_i56.CartUseCase>(
        _i56.CartUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i57.CartViewModel>(() => _i57.CartViewModel(
          gh<_i48.ProductDeleteCartUseCase>(),
          gh<_i46.PlaceOrderUseCase>(),
          gh<_i42.GetCartStatusUseCase>(),
          gh<_i52.UpdateCartUseCase>(),
          gh<_i39.GetAddressUseCase>(),
        ));
    gh.factory<_i58.CheckStatusViewModel>(() =>
        _i58.CheckStatusViewModel(gh<_i43.GetUserLoggedInStatusUseCase>()));
    gh.factory<_i59.DashboardViewModel>(
        () => _i59.DashboardViewModel(gh<_i41.GetAllProductsUseCase>()));
    gh.factory<_i60.EditAddressUseCase>(
        () => _i60.EditAddressUseCase(gh<_i36.FirekartRepository>()));
    gh.factory<_i61.HomeScreenViewModel>(() => _i61.HomeScreenViewModel(
          gh<_i42.GetCartStatusUseCase>(),
          gh<_i51.StreamAccountDetailsUseCaseUseCase>(),
          gh<_i39.GetAddressUseCase>(),
          gh<_i44.LogoutUseCase>(),
        ));
    gh.factory<_i62.MyAddressViewModel>(() => _i62.MyAddressViewModel(
          gh<_i38.GetAccountDetailsUseCase>(),
          gh<_i22.SetAccountDetailsUseCase>(),
          gh<_i39.GetAddressUseCase>(),
          gh<_i60.EditAddressUseCase>(),
        ));
    gh.factory<_i63.OtpLoginViewModel>(
        () => _i63.OtpLoginViewModel(gh<_i50.SendOTPUseCase>()));
    gh.factory<_i64.ProductSearchViewModel>(
        () => _i64.ProductSearchViewModel(gh<_i49.SearchProductsUseCase>()));
    gh.factory<_i65.ProductViewModel>(() => _i65.ProductViewModel(
          gh<_i15.GetItemsInCartUseCase>(),
          gh<_i47.ProductAddToCartUseCase>(),
          gh<_i42.GetCartStatusUseCase>(),
          gh<_i52.UpdateCartUseCase>(),
        ));
    gh.factory<_i66.AddAddressViewModel>(() => _i66.AddAddressViewModel(
          gh<_i54.AddAddressUseCase>(),
          gh<_i60.EditAddressUseCase>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i67.FirebaseModule {}

class _$NetworkModule extends _i68.NetworkModule {}

class _$StorageModule extends _i69.StorageModule {}
