// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i11;
import 'package:firebase_analytics/firebase_analytics.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i9;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i10;
import 'package:firebase_performance/firebase_performance.dart' as _i12;
import 'package:fluttercommerce/app/view_model/app_view_model.dart' as _i4;
import 'package:fluttercommerce/core/analytics/analytics.dart' as _i20;
import 'package:fluttercommerce/core/performance/performance_moniter.dart'
    as _i14;
import 'package:fluttercommerce/data/mapper/data_mapper.dart' as _i5;
import 'package:fluttercommerce/data/repository/firebase_repository.dart'
    as _i25;
import 'package:fluttercommerce/data/service/firebase_service.dart' as _i13;
import 'package:fluttercommerce/data/service/sms_service.dart' as _i17;
import 'package:fluttercommerce/di/firebase_module.dart' as _i55;
import 'package:fluttercommerce/domain/mapper/domain_mapper.dart' as _i6;
import 'package:fluttercommerce/domain/repository/firebase_repository.dart'
    as _i24;
import 'package:fluttercommerce/domain/usecases/add_product_to_cart_usecase.dart'
    as _i37;
import 'package:fluttercommerce/domain/usecases/delete_product_from_cart_usecase.dart'
    as _i38;
import 'package:fluttercommerce/domain/usecases/get_account_details_usecase.dart'
    as _i26;
import 'package:fluttercommerce/domain/usecases/get_all_orders_usecase.dart'
    as _i27;
import 'package:fluttercommerce/domain/usecases/get_all_product_usecase.dart'
    as _i28;
import 'package:fluttercommerce/domain/usecases/get_cart_status_use_case.dart'
    as _i29;
import 'package:fluttercommerce/domain/usecases/get_current_user_phone_number_usecase.dart'
    as _i30;
import 'package:fluttercommerce/domain/usecases/get_items_in_cart_usecase.dart'
    as _i31;
import 'package:fluttercommerce/domain/usecases/get_user_data_status_usecase.dart'
    as _i32;
import 'package:fluttercommerce/domain/usecases/get_user_logged_in_status.dart'
    as _i33;
import 'package:fluttercommerce/domain/usecases/logout_usecase.dart' as _i34;
import 'package:fluttercommerce/domain/usecases/place_order_usecase.dart'
    as _i36;
import 'package:fluttercommerce/domain/usecases/sample_use_case.dart' as _i19;
import 'package:fluttercommerce/domain/usecases/search_products_use_case.dart'
    as _i40;
import 'package:fluttercommerce/domain/usecases/send_otp_usecase.dart' as _i41;
import 'package:fluttercommerce/domain/usecases/set_account_details_usecase.dart'
    as _i42;
import 'package:fluttercommerce/domain/usecases/set_user_profile_data_usecase.dart'
    as _i43;
import 'package:fluttercommerce/domain/usecases/stream_account_details_usecase.dart'
    as _i44;
import 'package:fluttercommerce/firebase_impl/analytics/firebase_analytics_impl.dart'
    as _i21;
import 'package:fluttercommerce/firebase_impl/crashlytics_service.dart' as _i22;
import 'package:fluttercommerce/firebase_impl/deeplink/firebase_deep_link.dart'
    as _i23;
import 'package:fluttercommerce/firebase_impl/performance/firebase_performance_moniter.dart'
    as _i15;
import 'package:fluttercommerce/presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i45;
import 'package:fluttercommerce/presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i46;
import 'package:fluttercommerce/presentation/features/app_settings/view_model/app_settings_view_model.dart'
    as _i3;
import 'package:fluttercommerce/presentation/features/cart/view_model/cart_view_model.dart'
    as _i48;
import 'package:fluttercommerce/presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i49;
import 'package:fluttercommerce/presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i50;
import 'package:fluttercommerce/presentation/features/home/viewmodel/home_viewmodel.dart'
    as _i51;
import 'package:fluttercommerce/presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i52;
import 'package:fluttercommerce/presentation/features/order/view_model/my_orders_cubit.dart'
    as _i35;
import 'package:fluttercommerce/presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i53;
import 'package:fluttercommerce/presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i16;
import 'package:fluttercommerce/presentation/features/product_detail/view_model/product_view_model.dart'
    as _i39;
import 'package:fluttercommerce/presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i47;
import 'package:fluttercommerce/presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i54;
import 'package:fluttercommerce/presentation/features/splash/view_model/splash_view_model.dart'
    as _i18;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
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
          gh<_i11.FirebaseFirestore>(),
          gh<_i8.FirebaseAuth>(),
        ));
    gh.singleton<_i14.PerformanceMonitor>(
        _i15.FirebasePerformanceMonitor(gh<_i12.FirebasePerformance>()));
    gh.factory<_i16.PhoneLoginViewModel>(() => _i16.PhoneLoginViewModel());
    gh.singleton<_i17.SmsService>(_i17.SmsService(gh<_i8.FirebaseAuth>()));
    gh.factory<_i18.SplashViewModel>(() => _i18.SplashViewModel());
    gh.factory<_i19.UseCase>(() => _i19.UseCase());
    gh.factory<_i20.Analytics>(
        () => _i21.FirebaseAnalyticsImpl(gh<_i7.FirebaseAnalytics>()));
    gh.singleton<_i22.CrashlyticsService>(
        _i22.CrashlyticsService(gh<_i9.FirebaseCrashlytics>()));
    gh.factory<_i23.FirebaseDeepLink>(
        () => _i23.FirebaseDeepLink(gh<_i10.FirebaseDynamicLinks>()));
    gh.singleton<_i24.FirebaseRepository>(_i25.FirebaseRepositoryImpl(
      gh<_i5.DataMapper>(),
      gh<_i13.FirebaseService>(),
      gh<_i17.SmsService>(),
    ));
    gh.factory<_i26.GetAccountDetailsUseCase>(
        () => _i26.GetAccountDetailsUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i27.GetAllOrdersUseCase>(
        () => _i27.GetAllOrdersUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i28.GetAllProductsUseCase>(
        () => _i28.GetAllProductsUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i29.GetCartStatusUseCase>(
        () => _i29.GetCartStatusUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i30.GetCurrentUserPhoneNumberUseCase>(() =>
        _i30.GetCurrentUserPhoneNumberUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i31.GetItemsInCartUseCase>(
        () => _i31.GetItemsInCartUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i32.GetUserDataStatusUseCase>(
        () => _i32.GetUserDataStatusUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i33.GetUserLoggedInStatusUseCase>(
        () => _i33.GetUserLoggedInStatusUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i34.LogoutUseCase>(
        () => _i34.LogoutUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i35.MyOrdersCubit>(
        () => _i35.MyOrdersCubit(gh<_i27.GetAllOrdersUseCase>()));
    gh.factory<_i36.PlaceOrderUseCase>(
        () => _i36.PlaceOrderUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i37.ProductAddToCartUseCase>(
        () => _i37.ProductAddToCartUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i38.ProductDeleteCartUseCase>(
        () => _i38.ProductDeleteCartUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i39.ProductViewModel>(() => _i39.ProductViewModel(
          gh<_i31.GetItemsInCartUseCase>(),
          gh<_i38.ProductDeleteCartUseCase>(),
          gh<_i37.ProductAddToCartUseCase>(),
          gh<_i29.GetCartStatusUseCase>(),
          gh<_i6.DomainMapper>(),
        ));
    gh.factory<_i40.SearchProductsUseCase>(
        () => _i40.SearchProductsUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i41.SendOTPUseCase>(
        () => _i41.SendOTPUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i42.SetAccountDetailsUseCase>(
        () => _i42.SetAccountDetailsUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i43.SetProfileUserDataUseCase>(
        () => _i43.SetProfileUserDataUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i44.StreamAccountDetailsUseCaseUseCase>(() =>
        _i44.StreamAccountDetailsUseCaseUseCase(gh<_i24.FirebaseRepository>()));
    gh.factory<_i45.AddAccountDetailsViewModel>(
        () => _i45.AddAccountDetailsViewModel(
              gh<_i42.SetAccountDetailsUseCase>(),
              gh<_i26.GetAccountDetailsUseCase>(),
              gh<_i43.SetProfileUserDataUseCase>(),
              gh<_i30.GetCurrentUserPhoneNumberUseCase>(),
            ));
    gh.factory<_i46.AddAddressViewModel>(
        () => _i46.AddAddressViewModel(gh<_i42.SetAccountDetailsUseCase>()));
    gh.factory<_i47.AllProductCubit>(
        () => _i47.AllProductCubit(gh<_i28.GetAllProductsUseCase>()));
    gh.factory<_i48.CartViewModel>(() => _i48.CartViewModel(
          gh<_i37.ProductAddToCartUseCase>(),
          gh<_i38.ProductDeleteCartUseCase>(),
          gh<_i36.PlaceOrderUseCase>(),
          gh<_i44.StreamAccountDetailsUseCaseUseCase>(),
          gh<_i29.GetCartStatusUseCase>(),
        ));
    gh.factory<_i49.CheckStatusViewModel>(() => _i49.CheckStatusViewModel(
          gh<_i33.GetUserLoggedInStatusUseCase>(),
          gh<_i32.GetUserDataStatusUseCase>(),
        ));
    gh.factory<_i50.DashboardViewModel>(
        () => _i50.DashboardViewModel(gh<_i28.GetAllProductsUseCase>()));
    gh.factory<_i51.HomeScreenViewModel>(() => _i51.HomeScreenViewModel(
          gh<_i29.GetCartStatusUseCase>(),
          gh<_i44.StreamAccountDetailsUseCaseUseCase>(),
        ));
    gh.factory<_i52.MyAddressViewModel>(() => _i52.MyAddressViewModel(
          gh<_i26.GetAccountDetailsUseCase>(),
          gh<_i42.SetAccountDetailsUseCase>(),
        ));
    gh.factory<_i53.OtpLoginViewModel>(
        () => _i53.OtpLoginViewModel(gh<_i41.SendOTPUseCase>()));
    gh.factory<_i54.ProductSearchViewModel>(
        () => _i54.ProductSearchViewModel(gh<_i40.SearchProductsUseCase>()));
    return this;
  }
}

class _$FirebaseModule extends _i55.FirebaseModule {}
