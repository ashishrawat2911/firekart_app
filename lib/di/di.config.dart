// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i11;
import 'package:firebase_analytics/firebase_analytics.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i9;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i10;
import 'package:firebase_performance/firebase_performance.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../app/view_model/app_view_model.dart' as _i4;
import '../core/analytics/analytics.dart' as _i22;
import '../core/analytics/impl/firebase_analytics_impl.dart' as _i23;
import '../core/deeplink/firebase_deep_link.dart' as _i24;
import '../core/performance/impl/firebase_performance_moniter.dart' as _i15;
import '../core/performance/performance_moniter.dart' as _i14;
import '../core/services/crashlytics_service.dart' as _i50;
import '../core/utils/validator.dart' as _i21;
import '../data/mapper/data_mapper.dart' as _i5;
import '../data/repository/firebase_repository.dart' as _i26;
import '../data/service/firebase_service.dart' as _i13;
import '../domain/mapper/domain_mapper.dart' as _i6;
import '../domain/repository/firebase_repository.dart' as _i25;
import '../domain/usecases/add_product_to_cart_usecase.dart' as _i39;
import '../domain/usecases/delete_product_from_cart_usecase.dart' as _i40;
import '../domain/usecases/get_account_details_usecase.dart' as _i27;
import '../domain/usecases/get_all_orders_usecase.dart' as _i28;
import '../domain/usecases/get_all_product_usecase.dart' as _i29;
import '../domain/usecases/get_cart_status_use_case.dart' as _i30;
import '../domain/usecases/get_current_user_phone_number_usecase.dart' as _i31;
import '../domain/usecases/get_items_in_cart_usecase.dart' as _i32;
import '../domain/usecases/get_user_data_status_usecase.dart' as _i33;
import '../domain/usecases/get_user_logged_in_status.dart' as _i34;
import '../domain/usecases/logout_usecase.dart' as _i35;
import '../domain/usecases/place_order_usecase.dart' as _i38;
import '../domain/usecases/sample_use_case.dart' as _i20;
import '../domain/usecases/search_products_use_case.dart' as _i42;
import '../domain/usecases/send_otp_usecase.dart' as _i17;
import '../domain/usecases/set_account_details_usecase.dart' as _i43;
import '../domain/usecases/set_user_profile_data_usecase.dart' as _i18;
import '../domain/usecases/stream_account_details_usecase.dart' as _i44;
import '../presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i45;
import '../presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i46;
import '../presentation/features/app_settings/view_model/app_settings_view_model.dart'
    as _i3;
import '../presentation/features/cart/view_model/cart_view_model.dart' as _i48;
import '../presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i49;
import '../presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i51;
import '../presentation/features/home/viewmodel/home_viewmodel.dart' as _i52;
import '../presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i53;
import '../presentation/features/order/view_model/my_orders_cubit.dart' as _i36;
import '../presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i37;
import '../presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i16;
import '../presentation/features/product_detail/view_model/product_view_model.dart'
    as _i41;
import '../presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i47;
import '../presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i54;
import '../presentation/features/splash/view_model/splash_view_model.dart'
    as _i19;
import 'module/firebase_module.dart'
    as _i55; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  _i1.GetIt $initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    gh.singleton<_i3.AppSettingsViewModel>(_i3.AppSettingsViewModel());
    gh.singleton<_i4.AppViewModel>(_i4.AppViewModel());
    gh.lazySingleton<_i5.DataMapper>(() => _i5.DataMapperImpl());
    gh.lazySingleton<_i6.DomainMapper>(() => _i6.DomainMapperImpl());
    gh.singleton<_i7.FirebaseAnalytics>(firebaseModule.firebaseAnalytics);
    gh.singleton<_i8.FirebaseAuth>(firebaseModule.firebaseAuth);
    gh.singleton<_i9.FirebaseCrashlytics>(firebaseModule.firebaseCrashlytics);
    gh.singleton<_i10.FirebaseDynamicLinks>(
        firebaseModule.firebaseDynamicLinks);
    gh.singleton<_i11.FirebaseFirestore>(firebaseModule.firebaseFireStore);
    gh.singleton<_i12.FirebasePerformance>(firebaseModule.firebasePerformance);
    gh.factory<_i13.FirebaseService>(() => _i13.FirebaseService(
          get<_i11.FirebaseFirestore>(),
          get<_i8.FirebaseAuth>(),
        ));
    gh.singleton<_i14.PerformanceMonitor>(
        _i15.FirebasePerformanceMonitor(get<_i12.FirebasePerformance>()));
    gh.factory<_i16.PhoneLoginViewModel>(() => _i16.PhoneLoginViewModel());
    gh.factory<_i17.SendOTPUseCase>(
        () => _i17.SendOTPUseCase(get<_i13.FirebaseService>()));
    gh.factory<_i18.SetProfileUserDataUseCase>(
        () => _i18.SetProfileUserDataUseCase(get<_i13.FirebaseService>()));
    gh.factory<_i19.SplashViewModel>(() => _i19.SplashViewModel());
    gh.factory<_i20.UseCase>(() => _i20.UseCase());
    gh.singleton<_i21.Validator>(_i21.Validator());
    gh.factory<_i22.Analytics>(
        () => _i23.FirebaseAnalyticsImpl(get<_i7.FirebaseAnalytics>()));
    gh.factory<_i24.FirebaseDeepLink>(
        () => _i24.FirebaseDeepLink(get<_i10.FirebaseDynamicLinks>()));
    gh.singleton<_i25.FirebaseRepository>(_i26.FirebaseRepositoryImpl(
      get<_i5.DataMapper>(),
      get<_i13.FirebaseService>(),
    ));
    gh.factory<_i27.GetAccountDetailsUseCase>(
        () => _i27.GetAccountDetailsUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i28.GetAllOrdersUseCase>(
        () => _i28.GetAllOrdersUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i29.GetAllProductsUseCase>(
        () => _i29.GetAllProductsUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i30.GetCartStatusUseCase>(
        () => _i30.GetCartStatusUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i31.GetCurrentUserPhoneNumberUseCase>(() =>
        _i31.GetCurrentUserPhoneNumberUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i32.GetItemsInCartUseCase>(
        () => _i32.GetItemsInCartUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i33.GetUserDataStatusUseCase>(
        () => _i33.GetUserDataStatusUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i34.GetUserLoggedInStatusUseCase>(() =>
        _i34.GetUserLoggedInStatusUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i35.LogoutUseCase>(
        () => _i35.LogoutUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i36.MyOrdersCubit>(
        () => _i36.MyOrdersCubit(get<_i28.GetAllOrdersUseCase>()));
    gh.factory<_i37.OtpLoginViewModel>(
        () => _i37.OtpLoginViewModel(get<_i17.SendOTPUseCase>()));
    gh.factory<_i38.PlaceOrderUseCase>(
        () => _i38.PlaceOrderUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i39.ProductAddToCartUseCase>(
        () => _i39.ProductAddToCartUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i40.ProductDeleteCartUseCase>(
        () => _i40.ProductDeleteCartUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i41.ProductViewModel>(() => _i41.ProductViewModel(
          get<_i32.GetItemsInCartUseCase>(),
          get<_i40.ProductDeleteCartUseCase>(),
          get<_i39.ProductAddToCartUseCase>(),
          get<_i30.GetCartStatusUseCase>(),
          get<_i6.DomainMapper>(),
        ));
    gh.factory<_i42.SearchProductsUseCase>(
        () => _i42.SearchProductsUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i43.SetAccountDetailsUseCase>(
        () => _i43.SetAccountDetailsUseCase(get<_i25.FirebaseRepository>()));
    gh.factory<_i44.StreamAccountDetailsUseCaseUseCase>(() =>
        _i44.StreamAccountDetailsUseCaseUseCase(
            get<_i25.FirebaseRepository>()));
    gh.factory<_i45.AddAccountDetailsViewModel>(
        () => _i45.AddAccountDetailsViewModel(
              get<_i43.SetAccountDetailsUseCase>(),
              get<_i27.GetAccountDetailsUseCase>(),
              get<_i18.SetProfileUserDataUseCase>(),
              get<_i31.GetCurrentUserPhoneNumberUseCase>(),
            ));
    gh.factory<_i46.AddAddressViewModel>(
        () => _i46.AddAddressViewModel(get<_i43.SetAccountDetailsUseCase>()));
    gh.factory<_i47.AllProductCubit>(
        () => _i47.AllProductCubit(get<_i29.GetAllProductsUseCase>()));
    gh.factory<_i48.CartViewModel>(() => _i48.CartViewModel(
          get<_i39.ProductAddToCartUseCase>(),
          get<_i40.ProductDeleteCartUseCase>(),
          get<_i38.PlaceOrderUseCase>(),
          get<_i44.StreamAccountDetailsUseCaseUseCase>(),
          get<_i30.GetCartStatusUseCase>(),
        ));
    gh.factory<_i49.CheckStatusViewModel>(() => _i49.CheckStatusViewModel(
          get<_i34.GetUserLoggedInStatusUseCase>(),
          get<_i33.GetUserDataStatusUseCase>(),
        ));
    gh.singleton<_i50.CrashlyticsService>(_i50.CrashlyticsService(
      get<_i33.GetUserDataStatusUseCase>(),
      get<_i13.FirebaseService>(),
      get<_i9.FirebaseCrashlytics>(),
    ));
    gh.factory<_i51.DashboardViewModel>(
        () => _i51.DashboardViewModel(get<_i29.GetAllProductsUseCase>()));
    gh.factory<_i52.HomeScreenViewModel>(() => _i52.HomeScreenViewModel(
          get<_i30.GetCartStatusUseCase>(),
          get<_i44.StreamAccountDetailsUseCaseUseCase>(),
        ));
    gh.factory<_i53.MyAddressViewModel>(() => _i53.MyAddressViewModel(
          get<_i27.GetAccountDetailsUseCase>(),
          get<_i43.SetAccountDetailsUseCase>(),
        ));
    gh.factory<_i54.ProductSearchViewModel>(
        () => _i54.ProductSearchViewModel(get<_i42.SearchProductsUseCase>()));
    return this;
  }
}

class _$FirebaseModule extends _i55.FirebaseModule {}
