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
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/analytics/analytics.dart' as _i17;
import '../core/analytics/impl/firebase_analytics_impl.dart' as _i18;
import '../core/deeplink/firebase_deep_link.dart' as _i19;
import '../core/services/crashlytics_service.dart' as _i45;
import '../core/utils/validator.dart' as _i16;
import '../data/mapper/data_mapper.dart' as _i3;
import '../data/repository/firebase_repository.dart' as _i21;
import '../data/service/firebase_service.dart' as _i10;
import '../domain/mapper/domain_mapper.dart' as _i4;
import '../domain/repository/firebase_repository.dart' as _i20;
import '../domain/usecases/add_product_to_cart_usecase.dart' as _i34;
import '../domain/usecases/delete_product_from_cart_usecase.dart' as _i35;
import '../domain/usecases/get_account_details_usecase.dart' as _i22;
import '../domain/usecases/get_all_orders_usecase.dart' as _i23;
import '../domain/usecases/get_all_product_usecase.dart' as _i24;
import '../domain/usecases/get_cart_status_use_case.dart' as _i25;
import '../domain/usecases/get_current_user_phone_number_usecase.dart' as _i26;
import '../domain/usecases/get_items_in_cart_usecase.dart' as _i27;
import '../domain/usecases/get_user_data_status_usecase.dart' as _i28;
import '../domain/usecases/get_user_logged_in_status.dart' as _i29;
import '../domain/usecases/logout_usecase.dart' as _i30;
import '../domain/usecases/place_order_usecase.dart' as _i33;
import '../domain/usecases/sample_use_case.dart' as _i15;
import '../domain/usecases/search_products_use_case.dart' as _i37;
import '../domain/usecases/send_otp_usecase.dart' as _i12;
import '../domain/usecases/set_account_details_usecase.dart' as _i38;
import '../domain/usecases/set_user_profile_data_usecase.dart' as _i13;
import '../domain/usecases/stream_account_details_usecase.dart' as _i39;
import '../presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i40;
import '../presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i41;
import '../presentation/features/cart/view_model/cart_view_model.dart' as _i43;
import '../presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i44;
import '../presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i46;
import '../presentation/features/home/viewmodel/home_viewmodel.dart' as _i47;
import '../presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i48;
import '../presentation/features/order/view_model/my_orders_cubit.dart' as _i31;
import '../presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i32;
import '../presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i11;
import '../presentation/features/product_detail/view_model/product_view_model.dart'
    as _i36;
import '../presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i42;
import '../presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i49;
import '../presentation/features/splash/view_model/splash_view_model.dart'
    as _i14;
import 'module/firebase_module.dart'
    as _i50; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i10.FirebaseService>(() => _i10.FirebaseService(
          get<_i9.FirebaseFirestore>(),
          get<_i6.FirebaseAuth>(),
        ));
    gh.factory<_i11.PhoneLoginViewModel>(() => _i11.PhoneLoginViewModel());
    gh.factory<_i12.SendOTPUseCase>(
        () => _i12.SendOTPUseCase(get<_i10.FirebaseService>()));
    gh.factory<_i13.SetProfileUserDataUseCase>(
        () => _i13.SetProfileUserDataUseCase(get<_i10.FirebaseService>()));
    gh.factory<_i14.SplashViewModel>(() => _i14.SplashViewModel());
    gh.factory<_i15.UseCase>(() => _i15.UseCase());
    gh.singleton<_i16.Validator>(_i16.Validator());
    gh.factory<_i17.Analytics>(
        () => _i18.FirebaseAnalyticsImpl(get<_i5.FirebaseAnalytics>()));
    gh.factory<_i19.FirebaseDeepLink>(
        () => _i19.FirebaseDeepLink(get<_i8.FirebaseDynamicLinks>()));
    gh.singleton<_i20.FirebaseRepository>(_i21.FirebaseRepositoryImpl(
      get<_i3.DataMapper>(),
      get<_i10.FirebaseService>(),
    ));
    gh.factory<_i22.GetAccountDetailsUseCase>(
        () => _i22.GetAccountDetailsUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i23.GetAllOrdersUseCase>(
        () => _i23.GetAllOrdersUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i24.GetAllProductsUseCase>(
        () => _i24.GetAllProductsUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i25.GetCartStatusUseCase>(
        () => _i25.GetCartStatusUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i26.GetCurrentUserPhoneNumberUseCase>(() =>
        _i26.GetCurrentUserPhoneNumberUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i27.GetItemsInCartUseCase>(
        () => _i27.GetItemsInCartUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i28.GetUserDataStatusUseCase>(
        () => _i28.GetUserDataStatusUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i29.GetUserLoggedInStatusUseCase>(() =>
        _i29.GetUserLoggedInStatusUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i30.LogoutUseCase>(
        () => _i30.LogoutUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i31.MyOrdersCubit>(
        () => _i31.MyOrdersCubit(get<_i23.GetAllOrdersUseCase>()));
    gh.factory<_i32.OtpLoginViewModel>(
        () => _i32.OtpLoginViewModel(get<_i12.SendOTPUseCase>()));
    gh.factory<_i33.PlaceOrderUseCase>(
        () => _i33.PlaceOrderUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i34.ProductAddToCartUseCase>(
        () => _i34.ProductAddToCartUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i35.ProductDeleteCartUseCase>(
        () => _i35.ProductDeleteCartUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i36.ProductViewModel>(() => _i36.ProductViewModel(
          get<_i27.GetItemsInCartUseCase>(),
          get<_i35.ProductDeleteCartUseCase>(),
          get<_i34.ProductAddToCartUseCase>(),
          get<_i25.GetCartStatusUseCase>(),
          get<_i4.DomainMapper>(),
        ));
    gh.factory<_i37.SearchProductsUseCase>(
        () => _i37.SearchProductsUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i38.SetAccountDetailsUseCase>(
        () => _i38.SetAccountDetailsUseCase(get<_i20.FirebaseRepository>()));
    gh.factory<_i39.StreamAccountDetailsUseCaseUseCase>(() =>
        _i39.StreamAccountDetailsUseCaseUseCase(
            get<_i20.FirebaseRepository>()));
    gh.factory<_i40.AddAccountDetailsViewModel>(
        () => _i40.AddAccountDetailsViewModel(
              get<_i38.SetAccountDetailsUseCase>(),
              get<_i22.GetAccountDetailsUseCase>(),
              get<_i13.SetProfileUserDataUseCase>(),
              get<_i26.GetCurrentUserPhoneNumberUseCase>(),
            ));
    gh.factory<_i41.AddAddressViewModel>(
        () => _i41.AddAddressViewModel(get<_i38.SetAccountDetailsUseCase>()));
    gh.factory<_i42.AllProductCubit>(
        () => _i42.AllProductCubit(get<_i24.GetAllProductsUseCase>()));
    gh.factory<_i43.CartViewModel>(() => _i43.CartViewModel(
          get<_i34.ProductAddToCartUseCase>(),
          get<_i35.ProductDeleteCartUseCase>(),
          get<_i33.PlaceOrderUseCase>(),
          get<_i39.StreamAccountDetailsUseCaseUseCase>(),
          get<_i25.GetCartStatusUseCase>(),
        ));
    gh.factory<_i44.CheckStatusViewModel>(() => _i44.CheckStatusViewModel(
          get<_i29.GetUserLoggedInStatusUseCase>(),
          get<_i28.GetUserDataStatusUseCase>(),
        ));
    gh.singleton<_i45.CrashlyticsService>(_i45.CrashlyticsService(
      get<_i28.GetUserDataStatusUseCase>(),
      get<_i10.FirebaseService>(),
      get<_i7.FirebaseCrashlytics>(),
    ));
    gh.factory<_i46.DashboardViewModel>(
        () => _i46.DashboardViewModel(get<_i24.GetAllProductsUseCase>()));
    gh.factory<_i47.HomeScreenViewModel>(() => _i47.HomeScreenViewModel(
          get<_i25.GetCartStatusUseCase>(),
          get<_i39.StreamAccountDetailsUseCaseUseCase>(),
        ));
    gh.factory<_i48.MyAddressViewModel>(() => _i48.MyAddressViewModel(
          get<_i22.GetAccountDetailsUseCase>(),
          get<_i38.SetAccountDetailsUseCase>(),
        ));
    gh.factory<_i49.ProductSearchViewModel>(
        () => _i49.ProductSearchViewModel(get<_i37.SearchProductsUseCase>()));
    return this;
  }
}

class _$FirebaseModule extends _i50.FirebaseModule {}
