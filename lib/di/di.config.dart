// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i32;
import 'package:core/analytics/analytics.dart' as _i52;
import 'package:core/connectivity/network_connectivity.dart' as _i19;
import 'package:core/di/di.module.dart' as _i3;
import 'package:core/performance/performance_moniter.dart' as _i42;
import 'package:data/di/di.module.dart' as _i4;
import 'package:domain/di/di.module.dart' as _i5;
import 'package:domain/usecases/add_address_usecase.dart' as _i10;
import 'package:domain/usecases/add_product_to_cart_usecase.dart' as _i49;
import 'package:domain/usecases/delete_product_from_cart_usecase.dart' as _i21;
import 'package:domain/usecases/edit_address_usecase.dart' as _i11;
import 'package:domain/usecases/get_account_details_usecase.dart' as _i8;
import 'package:domain/usecases/get_address_usecase.dart' as _i25;
import 'package:domain/usecases/get_all_orders_usecase.dart' as _i39;
import 'package:domain/usecases/get_all_product_usecase.dart' as _i13;
import 'package:domain/usecases/get_cart_status_use_case.dart' as _i23;
import 'package:domain/usecases/get_items_in_cart_usecase.dart' as _i48;
import 'package:domain/usecases/get_product_details_usecase.dart' as _i50;
import 'package:domain/usecases/get_user_logged_in_status.dart' as _i17;
import 'package:domain/usecases/logout_usecase.dart' as _i36;
import 'package:domain/usecases/notification_handler_usecase.dart' as _i18;
import 'package:domain/usecases/place_order_usecase.dart' as _i22;
import 'package:domain/usecases/search_products_use_case.dart' as _i46;
import 'package:domain/usecases/send_otp_usecase.dart' as _i41;
import 'package:domain/usecases/set_account_details_usecase.dart' as _i7;
import 'package:domain/usecases/set_device_token_usecase.dart' as _i16;
import 'package:domain/usecases/stream_account_details_usecase.dart' as _i35;
import 'package:domain/usecases/update_cart_usecase.dart' as _i24;
import 'package:firebase_analytics/firebase_analytics.dart' as _i28;
import 'package:firebase_auth/firebase_auth.dart' as _i29;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i30;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i31;
import 'package:firebase_performance/firebase_performance.dart' as _i33;
import 'package:firekart/app/view_model/app_view_model.dart' as _i15;
import 'package:firekart/di/module/firebase_module.dart' as _i56;
import 'package:firekart/firebase_impl/analytics/firebase_analytics_impl.dart'
    as _i53;
import 'package:firekart/firebase_impl/crashlytics_service.dart' as _i54;
import 'package:firekart/firebase_impl/deeplink/firebase_deep_link.dart'
    as _i55;
import 'package:firekart/firebase_impl/performance/firebase_performance_moniter.dart'
    as _i43;
import 'package:presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i6;
import 'package:presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i9;
import 'package:presentation/features/app_settings/view_model/app_settings_view_model.dart'
    as _i14;
import 'package:presentation/features/cart/view_model/cart_view_model.dart'
    as _i20;
import 'package:presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i26;
import 'package:presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i27;
import 'package:presentation/features/home/viewmodel/home_viewmodel.dart'
    as _i34;
import 'package:presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i37;
import 'package:presentation/features/order/view_model/my_orders_cubit.dart'
    as _i38;
import 'package:presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i40;
import 'package:presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i44;
import 'package:presentation/features/product_detail/view_model/product_view_model.dart'
    as _i47;
import 'package:presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i12;
import 'package:presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i45;
import 'package:presentation/features/splash/view_model/splash_view_model.dart'
    as _i51;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    await _i3.CorePackageModule().init(gh);
    await _i4.DataPackageModule().init(gh);
    await _i5.DomainPackageModule().init(gh);
    final firebaseModule = _$FirebaseModule();
    gh.factory<_i6.AddAccountDetailsViewModel>(
        () => _i6.AddAccountDetailsViewModel(
              gh<_i7.SetAccountDetailsUseCase>(),
              gh<_i8.GetAccountDetailsUseCase>(),
            ));
    gh.factory<_i9.AddAddressViewModel>(() => _i9.AddAddressViewModel(
          gh<_i10.AddAddressUseCase>(),
          gh<_i11.EditAddressUseCase>(),
        ));
    gh.factory<_i12.AllProductCubit>(
        () => _i12.AllProductCubit(gh<_i13.GetAllProductsUseCase>()));
    gh.singleton<_i14.AppSettingsViewModel>(_i14.AppSettingsViewModel());
    gh.singleton<_i15.AppViewModel>(_i15.AppViewModel(
      gh<_i16.SetDeviceTokenUseCase>(),
      gh<_i17.GetUserLoggedInStatusUseCase>(),
      gh<_i18.PushNotificationHandlerUseCase>(),
      gh<_i19.NetworkConnectivity>(),
    ));
    gh.factory<_i20.CartViewModel>(() => _i20.CartViewModel(
          gh<_i21.ProductDeleteCartUseCase>(),
          gh<_i22.PlaceOrderUseCase>(),
          gh<_i23.GetCartStatusUseCase>(),
          gh<_i24.UpdateCartUseCase>(),
          gh<_i25.GetAddressUseCase>(),
        ));
    gh.factory<_i26.CheckStatusViewModel>(() =>
        _i26.CheckStatusViewModel(gh<_i17.GetUserLoggedInStatusUseCase>()));
    gh.factory<_i27.DashboardViewModel>(
        () => _i27.DashboardViewModel(gh<_i13.GetAllProductsUseCase>()));
    gh.singleton<_i28.FirebaseAnalytics>(firebaseModule.firebaseAnalytics);
    gh.singleton<_i29.FirebaseAuth>(firebaseModule.firebaseAuth);
    gh.singleton<_i30.FirebaseCrashlytics>(firebaseModule.firebaseCrashlytics);
    gh.singleton<_i31.FirebaseDynamicLinks>(
        firebaseModule.firebaseDynamicLinks);
    gh.singleton<_i32.FirebaseFirestore>(firebaseModule.firebaseFireStore);
    gh.singleton<_i33.FirebasePerformance>(firebaseModule.firebasePerformance);
    gh.factory<_i34.HomeScreenViewModel>(() => _i34.HomeScreenViewModel(
          gh<_i23.GetCartStatusUseCase>(),
          gh<_i35.StreamAccountDetailsUseCaseUseCase>(),
          gh<_i25.GetAddressUseCase>(),
          gh<_i36.LogoutUseCase>(),
        ));
    gh.factory<_i37.MyAddressViewModel>(() => _i37.MyAddressViewModel(
          gh<_i8.GetAccountDetailsUseCase>(),
          gh<_i7.SetAccountDetailsUseCase>(),
          gh<_i25.GetAddressUseCase>(),
          gh<_i11.EditAddressUseCase>(),
        ));
    gh.factory<_i38.MyOrdersCubit>(
        () => _i38.MyOrdersCubit(gh<_i39.GetAllOrdersUseCase>()));
    gh.factory<_i40.OtpLoginViewModel>(
        () => _i40.OtpLoginViewModel(gh<_i41.SendOTPUseCase>()));
    gh.singleton<_i42.PerformanceMonitor>(
        _i43.FirebasePerformanceMonitor(gh<_i33.FirebasePerformance>()));
    gh.factory<_i44.PhoneLoginViewModel>(() => _i44.PhoneLoginViewModel());
    gh.factory<_i45.ProductSearchViewModel>(
        () => _i45.ProductSearchViewModel(gh<_i46.SearchProductsUseCase>()));
    gh.factory<_i47.ProductViewModel>(() => _i47.ProductViewModel(
          gh<_i48.GetItemsInCartUseCase>(),
          gh<_i49.ProductAddToCartUseCase>(),
          gh<_i23.GetCartStatusUseCase>(),
          gh<_i24.UpdateCartUseCase>(),
          gh<_i50.GetProductDetailsUseCase>(),
        ));
    gh.factory<_i51.SplashViewModel>(() => _i51.SplashViewModel());
    gh.factory<_i52.Analytics>(
        () => _i53.FirebaseAnalyticsImpl(gh<_i28.FirebaseAnalytics>()));
    gh.singleton<_i54.CrashlyticsService>(
        _i54.CrashlyticsService(gh<_i30.FirebaseCrashlytics>()));
    gh.factory<_i55.FirebaseDeepLink>(
        () => _i55.FirebaseDeepLink(gh<_i31.FirebaseDynamicLinks>()));
    return this;
  }
}

class _$FirebaseModule extends _i56.FirebaseModule {}
