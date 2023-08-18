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
import 'package:firekart/app/view_model/app_view_model.dart' as _i4;
import 'package:firekart/core/analytics/analytics.dart' as _i22;
import 'package:firekart/core/performance/performance_moniter.dart' as _i14;
import 'package:firekart/core/storage/prefrences.dart' as _i17;
import 'package:firekart/core/storage/secure_storage.dart' as _i18;
import 'package:firekart/data/mapper/data_mapper.dart' as _i5;
import 'package:firekart/data/repository/firebase_repository.dart' as _i27;
import 'package:firekart/data/service/firebase_service.dart' as _i13;
import 'package:firekart/data/service/sms_service.dart' as _i19;
import 'package:firekart/di/firebase_module.dart' as _i57;
import 'package:firekart/domain/mapper/domain_mapper.dart' as _i6;
import 'package:firekart/domain/repository/firebase_repository.dart' as _i26;
import 'package:firekart/domain/usecases/add_product_to_cart_usecase.dart'
    as _i39;
import 'package:firekart/domain/usecases/delete_product_from_cart_usecase.dart'
    as _i40;
import 'package:firekart/domain/usecases/get_account_details_usecase.dart'
    as _i28;
import 'package:firekart/domain/usecases/get_all_orders_usecase.dart' as _i29;
import 'package:firekart/domain/usecases/get_all_product_usecase.dart' as _i30;
import 'package:firekart/domain/usecases/get_cart_status_use_case.dart' as _i31;
import 'package:firekart/domain/usecases/get_current_user_phone_number_usecase.dart'
    as _i32;
import 'package:firekart/domain/usecases/get_items_in_cart_usecase.dart'
    as _i33;
import 'package:firekart/domain/usecases/get_user_data_status_usecase.dart'
    as _i34;
import 'package:firekart/domain/usecases/get_user_logged_in_status.dart'
    as _i35;
import 'package:firekart/domain/usecases/logout_usecase.dart' as _i36;
import 'package:firekart/domain/usecases/place_order_usecase.dart' as _i38;
import 'package:firekart/domain/usecases/sample_use_case.dart' as _i21;
import 'package:firekart/domain/usecases/search_products_use_case.dart' as _i42;
import 'package:firekart/domain/usecases/send_otp_usecase.dart' as _i43;
import 'package:firekart/domain/usecases/set_account_details_usecase.dart'
    as _i44;
import 'package:firekart/domain/usecases/set_user_profile_data_usecase.dart'
    as _i45;
import 'package:firekart/domain/usecases/stream_account_details_usecase.dart'
    as _i46;
import 'package:firekart/firebase_impl/analytics/firebase_analytics_impl.dart'
    as _i23;
import 'package:firekart/firebase_impl/crashlytics_service.dart' as _i24;
import 'package:firekart/firebase_impl/deeplink/firebase_deep_link.dart'
    as _i25;
import 'package:firekart/firebase_impl/performance/firebase_performance_moniter.dart'
    as _i15;
import 'package:firekart/presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i47;
import 'package:firekart/presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i48;
import 'package:firekart/presentation/features/app_settings/view_model/app_settings_view_model.dart'
    as _i3;
import 'package:firekart/presentation/features/cart/view_model/cart_view_model.dart'
    as _i50;
import 'package:firekart/presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i51;
import 'package:firekart/presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i52;
import 'package:firekart/presentation/features/home/viewmodel/home_viewmodel.dart'
    as _i53;
import 'package:firekart/presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i54;
import 'package:firekart/presentation/features/order/view_model/my_orders_cubit.dart'
    as _i37;
import 'package:firekart/presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i55;
import 'package:firekart/presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i16;
import 'package:firekart/presentation/features/product_detail/view_model/product_view_model.dart'
    as _i41;
import 'package:firekart/presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i49;
import 'package:firekart/presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i56;
import 'package:firekart/presentation/features/splash/view_model/splash_view_model.dart'
    as _i20;
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
    gh.singleton<_i17.Preferences>(_i17.Preferences());
    gh.singleton<_i18.SecureStorage>(
        _i18.SecureStorage(gh<_i17.Preferences>()));
    gh.singleton<_i19.SmsService>(_i19.SmsService(gh<_i8.FirebaseAuth>()));
    gh.factory<_i20.SplashViewModel>(() => _i20.SplashViewModel());
    gh.factory<_i21.UseCase>(() => _i21.UseCase());
    gh.factory<_i22.Analytics>(
        () => _i23.FirebaseAnalyticsImpl(gh<_i7.FirebaseAnalytics>()));
    gh.singleton<_i24.CrashlyticsService>(
        _i24.CrashlyticsService(gh<_i9.FirebaseCrashlytics>()));
    gh.factory<_i25.FirebaseDeepLink>(
        () => _i25.FirebaseDeepLink(gh<_i10.FirebaseDynamicLinks>()));
    gh.singleton<_i26.FirebaseRepository>(_i27.FirebaseRepositoryImpl(
      gh<_i5.DataMapper>(),
      gh<_i13.FirebaseService>(),
      gh<_i19.SmsService>(),
    ));
    gh.factory<_i28.GetAccountDetailsUseCase>(
        () => _i28.GetAccountDetailsUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i29.GetAllOrdersUseCase>(
        () => _i29.GetAllOrdersUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i30.GetAllProductsUseCase>(
        () => _i30.GetAllProductsUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i31.GetCartStatusUseCase>(
        () => _i31.GetCartStatusUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i32.GetCurrentUserPhoneNumberUseCase>(() =>
        _i32.GetCurrentUserPhoneNumberUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i33.GetItemsInCartUseCase>(
        () => _i33.GetItemsInCartUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i34.GetUserDataStatusUseCase>(
        () => _i34.GetUserDataStatusUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i35.GetUserLoggedInStatusUseCase>(
        () => _i35.GetUserLoggedInStatusUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i36.LogoutUseCase>(
        () => _i36.LogoutUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i37.MyOrdersCubit>(
        () => _i37.MyOrdersCubit(gh<_i29.GetAllOrdersUseCase>()));
    gh.factory<_i38.PlaceOrderUseCase>(
        () => _i38.PlaceOrderUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i39.ProductAddToCartUseCase>(
        () => _i39.ProductAddToCartUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i40.ProductDeleteCartUseCase>(
        () => _i40.ProductDeleteCartUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i41.ProductViewModel>(() => _i41.ProductViewModel(
          gh<_i33.GetItemsInCartUseCase>(),
          gh<_i40.ProductDeleteCartUseCase>(),
          gh<_i39.ProductAddToCartUseCase>(),
          gh<_i31.GetCartStatusUseCase>(),
          gh<_i6.DomainMapper>(),
        ));
    gh.factory<_i42.SearchProductsUseCase>(
        () => _i42.SearchProductsUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i43.SendOTPUseCase>(
        () => _i43.SendOTPUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i44.SetAccountDetailsUseCase>(
        () => _i44.SetAccountDetailsUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i45.SetProfileUserDataUseCase>(
        () => _i45.SetProfileUserDataUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i46.StreamAccountDetailsUseCaseUseCase>(() =>
        _i46.StreamAccountDetailsUseCaseUseCase(gh<_i26.FirebaseRepository>()));
    gh.factory<_i47.AddAccountDetailsViewModel>(
        () => _i47.AddAccountDetailsViewModel(
              gh<_i44.SetAccountDetailsUseCase>(),
              gh<_i28.GetAccountDetailsUseCase>(),
              gh<_i45.SetProfileUserDataUseCase>(),
              gh<_i32.GetCurrentUserPhoneNumberUseCase>(),
            ));
    gh.factory<_i48.AddAddressViewModel>(
        () => _i48.AddAddressViewModel(gh<_i44.SetAccountDetailsUseCase>()));
    gh.factory<_i49.AllProductCubit>(
        () => _i49.AllProductCubit(gh<_i30.GetAllProductsUseCase>()));
    gh.factory<_i50.CartViewModel>(() => _i50.CartViewModel(
          gh<_i39.ProductAddToCartUseCase>(),
          gh<_i40.ProductDeleteCartUseCase>(),
          gh<_i38.PlaceOrderUseCase>(),
          gh<_i46.StreamAccountDetailsUseCaseUseCase>(),
          gh<_i31.GetCartStatusUseCase>(),
        ));
    gh.factory<_i51.CheckStatusViewModel>(() => _i51.CheckStatusViewModel(
          gh<_i35.GetUserLoggedInStatusUseCase>(),
          gh<_i34.GetUserDataStatusUseCase>(),
        ));
    gh.factory<_i52.DashboardViewModel>(
        () => _i52.DashboardViewModel(gh<_i30.GetAllProductsUseCase>()));
    gh.factory<_i53.HomeScreenViewModel>(() => _i53.HomeScreenViewModel(
          gh<_i31.GetCartStatusUseCase>(),
          gh<_i46.StreamAccountDetailsUseCaseUseCase>(),
        ));
    gh.factory<_i54.MyAddressViewModel>(() => _i54.MyAddressViewModel(
          gh<_i28.GetAccountDetailsUseCase>(),
          gh<_i44.SetAccountDetailsUseCase>(),
        ));
    gh.factory<_i55.OtpLoginViewModel>(
        () => _i55.OtpLoginViewModel(gh<_i43.SendOTPUseCase>()));
    gh.factory<_i56.ProductSearchViewModel>(
        () => _i56.ProductSearchViewModel(gh<_i42.SearchProductsUseCase>()));
    return this;
  }
}

class _$FirebaseModule extends _i57.FirebaseModule {}
