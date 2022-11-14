// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i10;
import 'package:firebase_analytics/firebase_analytics.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i8;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i9;
import 'package:firebase_performance/firebase_performance.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../app/view_model/app_view_model.dart' as _i3;
import '../core/analytics/analytics.dart' as _i21;
import '../core/analytics/impl/firebase_analytics_impl.dart' as _i22;
import '../core/deeplink/firebase_deep_link.dart' as _i23;
import '../core/performance/impl/firebase_performance_moniter.dart' as _i14;
import '../core/performance/performance_moniter.dart' as _i13;
import '../core/services/crashlytics_service.dart' as _i49;
import '../core/utils/validator.dart' as _i20;
import '../data/mapper/data_mapper.dart' as _i4;
import '../data/repository/firebase_repository.dart' as _i25;
import '../data/service/firebase_service.dart' as _i12;
import '../domain/mapper/domain_mapper.dart' as _i5;
import '../domain/repository/firebase_repository.dart' as _i24;
import '../domain/usecases/add_product_to_cart_usecase.dart' as _i38;
import '../domain/usecases/delete_product_from_cart_usecase.dart' as _i39;
import '../domain/usecases/get_account_details_usecase.dart' as _i26;
import '../domain/usecases/get_all_orders_usecase.dart' as _i27;
import '../domain/usecases/get_all_product_usecase.dart' as _i28;
import '../domain/usecases/get_cart_status_use_case.dart' as _i29;
import '../domain/usecases/get_current_user_phone_number_usecase.dart' as _i30;
import '../domain/usecases/get_items_in_cart_usecase.dart' as _i31;
import '../domain/usecases/get_user_data_status_usecase.dart' as _i32;
import '../domain/usecases/get_user_logged_in_status.dart' as _i33;
import '../domain/usecases/logout_usecase.dart' as _i34;
import '../domain/usecases/place_order_usecase.dart' as _i37;
import '../domain/usecases/sample_use_case.dart' as _i19;
import '../domain/usecases/search_products_use_case.dart' as _i41;
import '../domain/usecases/send_otp_usecase.dart' as _i16;
import '../domain/usecases/set_account_details_usecase.dart' as _i42;
import '../domain/usecases/set_user_profile_data_usecase.dart' as _i17;
import '../domain/usecases/stream_account_details_usecase.dart' as _i43;
import '../presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i44;
import '../presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i45;
import '../presentation/features/cart/view_model/cart_view_model.dart' as _i47;
import '../presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i48;
import '../presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i50;
import '../presentation/features/home/viewmodel/home_viewmodel.dart' as _i51;
import '../presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i52;
import '../presentation/features/order/view_model/my_orders_cubit.dart' as _i35;
import '../presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i36;
import '../presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i15;
import '../presentation/features/product_detail/view_model/product_view_model.dart'
    as _i40;
import '../presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i46;
import '../presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i53;
import '../presentation/features/splash/view_model/splash_view_model.dart'
    as _i18;
import 'module/firebase_module.dart'
    as _i54; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i3.AppViewModel>(() => _i3.AppViewModel());
    gh.lazySingleton<_i4.DataMapper>(() => _i4.DataMapperImpl());
    gh.lazySingleton<_i5.DomainMapper>(() => _i5.DomainMapperImpl());
    gh.singleton<_i6.FirebaseAnalytics>(firebaseModule.firebaseAnalytics);
    gh.singleton<_i7.FirebaseAuth>(firebaseModule.firebaseAuth);
    gh.singleton<_i8.FirebaseCrashlytics>(firebaseModule.firebaseCrashlytics);
    gh.singleton<_i9.FirebaseDynamicLinks>(firebaseModule.firebaseDynamicLinks);
    gh.singleton<_i10.FirebaseFirestore>(firebaseModule.firebaseFireStore);
    gh.singleton<_i11.FirebasePerformance>(firebaseModule.firebasePerformance);
    gh.factory<_i12.FirebaseService>(() => _i12.FirebaseService(
          get<_i10.FirebaseFirestore>(),
          get<_i7.FirebaseAuth>(),
        ));
    gh.singleton<_i13.PerformanceMonitor>(
        _i14.FirebasePerformanceMonitor(get<_i11.FirebasePerformance>()));
    gh.factory<_i15.PhoneLoginViewModel>(() => _i15.PhoneLoginViewModel());
    gh.factory<_i16.SendOTPUseCase>(
        () => _i16.SendOTPUseCase(get<_i12.FirebaseService>()));
    gh.factory<_i17.SetProfileUserDataUseCase>(
        () => _i17.SetProfileUserDataUseCase(get<_i12.FirebaseService>()));
    gh.factory<_i18.SplashViewModel>(() => _i18.SplashViewModel());
    gh.factory<_i19.UseCase>(() => _i19.UseCase());
    gh.singleton<_i20.Validator>(_i20.Validator());
    gh.factory<_i21.Analytics>(
        () => _i22.FirebaseAnalyticsImpl(get<_i6.FirebaseAnalytics>()));
    gh.factory<_i23.FirebaseDeepLink>(
        () => _i23.FirebaseDeepLink(get<_i9.FirebaseDynamicLinks>()));
    gh.singleton<_i24.FirebaseRepository>(_i25.FirebaseRepositoryImpl(
      get<_i4.DataMapper>(),
      get<_i12.FirebaseService>(),
    ));
    gh.factory<_i26.GetAccountDetailsUseCase>(
        () => _i26.GetAccountDetailsUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i27.GetAllOrdersUseCase>(
        () => _i27.GetAllOrdersUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i28.GetAllProductsUseCase>(
        () => _i28.GetAllProductsUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i29.GetCartStatusUseCase>(
        () => _i29.GetCartStatusUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i30.GetCurrentUserPhoneNumberUseCase>(() =>
        _i30.GetCurrentUserPhoneNumberUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i31.GetItemsInCartUseCase>(
        () => _i31.GetItemsInCartUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i32.GetUserDataStatusUseCase>(
        () => _i32.GetUserDataStatusUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i33.GetUserLoggedInStatusUseCase>(() =>
        _i33.GetUserLoggedInStatusUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i34.LogoutUseCase>(
        () => _i34.LogoutUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i35.MyOrdersCubit>(
        () => _i35.MyOrdersCubit(get<_i27.GetAllOrdersUseCase>()));
    gh.factory<_i36.OtpLoginViewModel>(
        () => _i36.OtpLoginViewModel(get<_i16.SendOTPUseCase>()));
    gh.factory<_i37.PlaceOrderUseCase>(
        () => _i37.PlaceOrderUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i38.ProductAddToCartUseCase>(
        () => _i38.ProductAddToCartUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i39.ProductDeleteCartUseCase>(
        () => _i39.ProductDeleteCartUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i40.ProductViewModel>(() => _i40.ProductViewModel(
          get<_i31.GetItemsInCartUseCase>(),
          get<_i39.ProductDeleteCartUseCase>(),
          get<_i38.ProductAddToCartUseCase>(),
          get<_i29.GetCartStatusUseCase>(),
          get<_i5.DomainMapper>(),
        ));
    gh.factory<_i41.SearchProductsUseCase>(
        () => _i41.SearchProductsUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i42.SetAccountDetailsUseCase>(
        () => _i42.SetAccountDetailsUseCase(get<_i24.FirebaseRepository>()));
    gh.factory<_i43.StreamAccountDetailsUseCaseUseCase>(() =>
        _i43.StreamAccountDetailsUseCaseUseCase(
            get<_i24.FirebaseRepository>()));
    gh.factory<_i44.AddAccountDetailsViewModel>(
        () => _i44.AddAccountDetailsViewModel(
              get<_i42.SetAccountDetailsUseCase>(),
              get<_i26.GetAccountDetailsUseCase>(),
              get<_i17.SetProfileUserDataUseCase>(),
              get<_i30.GetCurrentUserPhoneNumberUseCase>(),
            ));
    gh.factory<_i45.AddAddressViewModel>(
        () => _i45.AddAddressViewModel(get<_i42.SetAccountDetailsUseCase>()));
    gh.factory<_i46.AllProductCubit>(
        () => _i46.AllProductCubit(get<_i28.GetAllProductsUseCase>()));
    gh.factory<_i47.CartViewModel>(() => _i47.CartViewModel(
          get<_i38.ProductAddToCartUseCase>(),
          get<_i39.ProductDeleteCartUseCase>(),
          get<_i37.PlaceOrderUseCase>(),
          get<_i43.StreamAccountDetailsUseCaseUseCase>(),
          get<_i29.GetCartStatusUseCase>(),
        ));
    gh.factory<_i48.CheckStatusViewModel>(() => _i48.CheckStatusViewModel(
          get<_i33.GetUserLoggedInStatusUseCase>(),
          get<_i32.GetUserDataStatusUseCase>(),
        ));
    gh.singleton<_i49.CrashlyticsService>(_i49.CrashlyticsService(
      get<_i32.GetUserDataStatusUseCase>(),
      get<_i12.FirebaseService>(),
      get<_i8.FirebaseCrashlytics>(),
    ));
    gh.factory<_i50.DashboardViewModel>(
        () => _i50.DashboardViewModel(get<_i28.GetAllProductsUseCase>()));
    gh.factory<_i51.HomeScreenViewModel>(() => _i51.HomeScreenViewModel(
          get<_i29.GetCartStatusUseCase>(),
          get<_i43.StreamAccountDetailsUseCaseUseCase>(),
        ));
    gh.factory<_i52.MyAddressViewModel>(() => _i52.MyAddressViewModel(
          get<_i26.GetAccountDetailsUseCase>(),
          get<_i42.SetAccountDetailsUseCase>(),
        ));
    gh.factory<_i53.ProductSearchViewModel>(
        () => _i53.ProductSearchViewModel(get<_i41.SearchProductsUseCase>()));
    return this;
  }
}

class _$FirebaseModule extends _i54.FirebaseModule {}
