// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:firebase_analytics/firebase_analytics.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i7;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i8;
import 'package:firebase_performance/firebase_performance.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/analytics/analytics.dart' as _i20;
import '../core/analytics/impl/firebase_analytics_impl.dart' as _i21;
import '../core/deeplink/firebase_deep_link.dart' as _i22;
import '../core/performance/impl/firebase_performance_moniter.dart' as _i13;
import '../core/performance/performance_moniter.dart' as _i12;
import '../core/services/crashlytics_service.dart' as _i48;
import '../core/utils/validator.dart' as _i19;
import '../data/mapper/data_mapper.dart' as _i3;
import '../data/repository/firebase_repository.dart' as _i24;
import '../data/service/firebase_service.dart' as _i11;
import '../domain/mapper/domain_mapper.dart' as _i4;
import '../domain/repository/firebase_repository.dart' as _i23;
import '../domain/usecases/add_product_to_cart_usecase.dart' as _i37;
import '../domain/usecases/delete_product_from_cart_usecase.dart' as _i38;
import '../domain/usecases/get_account_details_usecase.dart' as _i25;
import '../domain/usecases/get_all_orders_usecase.dart' as _i26;
import '../domain/usecases/get_all_product_usecase.dart' as _i27;
import '../domain/usecases/get_cart_status_use_case.dart' as _i28;
import '../domain/usecases/get_current_user_phone_number_usecase.dart' as _i29;
import '../domain/usecases/get_items_in_cart_usecase.dart' as _i30;
import '../domain/usecases/get_user_data_status_usecase.dart' as _i31;
import '../domain/usecases/get_user_logged_in_status.dart' as _i32;
import '../domain/usecases/logout_usecase.dart' as _i33;
import '../domain/usecases/place_order_usecase.dart' as _i36;
import '../domain/usecases/sample_use_case.dart' as _i18;
import '../domain/usecases/search_products_use_case.dart' as _i40;
import '../domain/usecases/send_otp_usecase.dart' as _i15;
import '../domain/usecases/set_account_details_usecase.dart' as _i41;
import '../domain/usecases/set_user_profile_data_usecase.dart' as _i16;
import '../domain/usecases/stream_account_details_usecase.dart' as _i42;
import '../presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i43;
import '../presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i44;
import '../presentation/features/cart/view_model/cart_view_model.dart' as _i46;
import '../presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i47;
import '../presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i49;
import '../presentation/features/home/viewmodel/home_viewmodel.dart' as _i50;
import '../presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i51;
import '../presentation/features/order/view_model/my_orders_cubit.dart' as _i34;
import '../presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i35;
import '../presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i14;
import '../presentation/features/product_detail/view_model/product_view_model.dart'
    as _i39;
import '../presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i45;
import '../presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i52;
import '../presentation/features/splash/view_model/splash_view_model.dart'
    as _i17;
import 'module/firebase_module.dart'
    as _i53; // ignore_for_file: unnecessary_lambdas

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
    gh.lazySingleton<_i3.DataMapper>(() => _i3.DataMapperImpl());
    gh.lazySingleton<_i4.DomainMapper>(() => _i4.DomainMapperImpl());
    gh.singleton<_i5.FirebaseAnalytics>(firebaseModule.firebaseAnalytics);
    gh.singleton<_i6.FirebaseAuth>(firebaseModule.firebaseAuth);
    gh.singleton<_i7.FirebaseCrashlytics>(firebaseModule.firebaseCrashlytics);
    gh.singleton<_i8.FirebaseDynamicLinks>(firebaseModule.firebaseDynamicLinks);
    gh.singleton<_i9.FirebaseFirestore>(firebaseModule.firebaseFireStore);
    gh.singleton<_i10.FirebasePerformance>(firebaseModule.firebasePerformance);
    gh.factory<_i11.FirebaseService>(() => _i11.FirebaseService(
          get<_i9.FirebaseFirestore>(),
          get<_i6.FirebaseAuth>(),
        ));
    gh.singleton<_i12.PerformanceMonitor>(
        _i13.FirebasePerformanceMonitor(get<_i10.FirebasePerformance>()));
    gh.factory<_i14.PhoneLoginViewModel>(() => _i14.PhoneLoginViewModel());
    gh.factory<_i15.SendOTPUseCase>(
        () => _i15.SendOTPUseCase(get<_i11.FirebaseService>()));
    gh.factory<_i16.SetProfileUserDataUseCase>(
        () => _i16.SetProfileUserDataUseCase(get<_i11.FirebaseService>()));
    gh.factory<_i17.SplashViewModel>(() => _i17.SplashViewModel());
    gh.factory<_i18.UseCase>(() => _i18.UseCase());
    gh.singleton<_i19.Validator>(_i19.Validator());
    gh.factory<_i20.Analytics>(
        () => _i21.FirebaseAnalyticsImpl(get<_i5.FirebaseAnalytics>()));
    gh.factory<_i22.FirebaseDeepLink>(
        () => _i22.FirebaseDeepLink(get<_i8.FirebaseDynamicLinks>()));
    gh.singleton<_i23.FirebaseRepository>(_i24.FirebaseRepositoryImpl(
      get<_i3.DataMapper>(),
      get<_i11.FirebaseService>(),
    ));
    gh.factory<_i25.GetAccountDetailsUseCase>(
        () => _i25.GetAccountDetailsUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i26.GetAllOrdersUseCase>(
        () => _i26.GetAllOrdersUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i27.GetAllProductsUseCase>(
        () => _i27.GetAllProductsUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i28.GetCartStatusUseCase>(
        () => _i28.GetCartStatusUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i29.GetCurrentUserPhoneNumberUseCase>(() =>
        _i29.GetCurrentUserPhoneNumberUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i30.GetItemsInCartUseCase>(
        () => _i30.GetItemsInCartUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i31.GetUserDataStatusUseCase>(
        () => _i31.GetUserDataStatusUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i32.GetUserLoggedInStatusUseCase>(() =>
        _i32.GetUserLoggedInStatusUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i33.LogoutUseCase>(
        () => _i33.LogoutUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i34.MyOrdersCubit>(
        () => _i34.MyOrdersCubit(get<_i26.GetAllOrdersUseCase>()));
    gh.factory<_i35.OtpLoginViewModel>(
        () => _i35.OtpLoginViewModel(get<_i15.SendOTPUseCase>()));
    gh.factory<_i36.PlaceOrderUseCase>(
        () => _i36.PlaceOrderUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i37.ProductAddToCartUseCase>(
        () => _i37.ProductAddToCartUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i38.ProductDeleteCartUseCase>(
        () => _i38.ProductDeleteCartUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i39.ProductViewModel>(() => _i39.ProductViewModel(
          get<_i30.GetItemsInCartUseCase>(),
          get<_i38.ProductDeleteCartUseCase>(),
          get<_i37.ProductAddToCartUseCase>(),
          get<_i28.GetCartStatusUseCase>(),
          get<_i4.DomainMapper>(),
        ));
    gh.factory<_i40.SearchProductsUseCase>(
        () => _i40.SearchProductsUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i41.SetAccountDetailsUseCase>(
        () => _i41.SetAccountDetailsUseCase(get<_i23.FirebaseRepository>()));
    gh.factory<_i42.StreamAccountDetailsUseCaseUseCase>(() =>
        _i42.StreamAccountDetailsUseCaseUseCase(
            get<_i23.FirebaseRepository>()));
    gh.factory<_i43.AddAccountDetailsViewModel>(
        () => _i43.AddAccountDetailsViewModel(
              get<_i41.SetAccountDetailsUseCase>(),
              get<_i25.GetAccountDetailsUseCase>(),
              get<_i16.SetProfileUserDataUseCase>(),
              get<_i29.GetCurrentUserPhoneNumberUseCase>(),
            ));
    gh.factory<_i44.AddAddressViewModel>(
        () => _i44.AddAddressViewModel(get<_i41.SetAccountDetailsUseCase>()));
    gh.factory<_i45.AllProductCubit>(
        () => _i45.AllProductCubit(get<_i27.GetAllProductsUseCase>()));
    gh.factory<_i46.CartViewModel>(() => _i46.CartViewModel(
          get<_i37.ProductAddToCartUseCase>(),
          get<_i38.ProductDeleteCartUseCase>(),
          get<_i36.PlaceOrderUseCase>(),
          get<_i42.StreamAccountDetailsUseCaseUseCase>(),
          get<_i28.GetCartStatusUseCase>(),
        ));
    gh.factory<_i47.CheckStatusViewModel>(() => _i47.CheckStatusViewModel(
          get<_i32.GetUserLoggedInStatusUseCase>(),
          get<_i31.GetUserDataStatusUseCase>(),
        ));
    gh.singleton<_i48.CrashlyticsService>(_i48.CrashlyticsService(
      get<_i31.GetUserDataStatusUseCase>(),
      get<_i11.FirebaseService>(),
      get<_i7.FirebaseCrashlytics>(),
    ));
    gh.factory<_i49.DashboardViewModel>(
        () => _i49.DashboardViewModel(get<_i27.GetAllProductsUseCase>()));
    gh.factory<_i50.HomeScreenViewModel>(() => _i50.HomeScreenViewModel(
          get<_i28.GetCartStatusUseCase>(),
          get<_i42.StreamAccountDetailsUseCaseUseCase>(),
        ));
    gh.factory<_i51.MyAddressViewModel>(() => _i51.MyAddressViewModel(
          get<_i25.GetAccountDetailsUseCase>(),
          get<_i41.SetAccountDetailsUseCase>(),
        ));
    gh.factory<_i52.ProductSearchViewModel>(
        () => _i52.ProductSearchViewModel(get<_i40.SearchProductsUseCase>()));
    return this;
  }
}

class _$FirebaseModule extends _i53.FirebaseModule {}
