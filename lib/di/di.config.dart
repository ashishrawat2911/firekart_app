// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:firebase_analytics/firebase_analytics.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/analytics/analytics.dart' as _i16;
import '../core/analytics/impl/firebase_analytics_impl.dart' as _i17;
import '../core/services/crashlytics_service.dart' as _i43;
import '../core/utils/validator.dart' as _i15;
import '../data/mapper/data_mapper.dart' as _i3;
import '../data/repository/firebase_repository.dart' as _i19;
import '../data/service/firebase_service.dart' as _i9;
import '../domain/mapper/domain_mapper.dart' as _i4;
import '../domain/repository/firebase_repository.dart' as _i18;
import '../domain/usecases/add_product_to_cart_usecase.dart' as _i32;
import '../domain/usecases/delete_product_from_cart_usecase.dart' as _i33;
import '../domain/usecases/get_account_details_usecase.dart' as _i20;
import '../domain/usecases/get_all_orders_usecase.dart' as _i21;
import '../domain/usecases/get_all_product_usecase.dart' as _i22;
import '../domain/usecases/get_cart_status_use_case.dart' as _i23;
import '../domain/usecases/get_current_user_phone_number_usecase.dart' as _i24;
import '../domain/usecases/get_items_in_cart_usecase.dart' as _i25;
import '../domain/usecases/get_user_data_status_usecase.dart' as _i26;
import '../domain/usecases/get_user_logged_in_status.dart' as _i27;
import '../domain/usecases/logout_usecase.dart' as _i28;
import '../domain/usecases/place_order_usecase.dart' as _i31;
import '../domain/usecases/sample_use_case.dart' as _i14;
import '../domain/usecases/search_products_use_case.dart' as _i35;
import '../domain/usecases/send_otp_usecase.dart' as _i11;
import '../domain/usecases/set_account_details_usecase.dart' as _i36;
import '../domain/usecases/set_user_profile_data_usecase.dart' as _i12;
import '../domain/usecases/stream_account_details_usecase.dart' as _i37;
import '../presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i38;
import '../presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i39;
import '../presentation/features/cart/view_model/cart_view_model.dart' as _i41;
import '../presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i42;
import '../presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i44;
import '../presentation/features/home/viewmodel/home_viewmodel.dart' as _i45;
import '../presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i46;
import '../presentation/features/order/view_model/my_orders_cubit.dart' as _i29;
import '../presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i30;
import '../presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i10;
import '../presentation/features/product_detail/view_model/product_view_model.dart'
    as _i34;
import '../presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i40;
import '../presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i47;
import '../presentation/features/splash/view_model/splash_view_model.dart'
    as _i13;
import 'module/firebase_module.dart'
    as _i48; // ignore_for_file: unnecessary_lambdas

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
    gh.singleton<_i8.FirebaseFirestore>(firebaseModule.firebaseFireStore);
    gh.factory<_i9.FirebaseService>(() => _i9.FirebaseService(
          get<_i8.FirebaseFirestore>(),
          get<_i6.FirebaseAuth>(),
        ));
    gh.factory<_i10.PhoneLoginViewModel>(() => _i10.PhoneLoginViewModel());
    gh.factory<_i11.SendOTPUseCase>(
        () => _i11.SendOTPUseCase(get<_i9.FirebaseService>()));
    gh.factory<_i12.SetProfileUserDataUseCase>(
        () => _i12.SetProfileUserDataUseCase(get<_i9.FirebaseService>()));
    gh.factory<_i13.SplashViewModel>(() => _i13.SplashViewModel());
    gh.factory<_i14.UseCase>(() => _i14.UseCase());
    gh.singleton<_i15.Validator>(_i15.Validator());
    gh.factory<_i16.Analytics>(
        () => _i17.FirebaseAnalyticsImpl(get<_i5.FirebaseAnalytics>()));
    gh.singleton<_i18.FirebaseRepository>(_i19.FirebaseRepositoryImpl(
      get<_i3.DataMapper>(),
      get<_i9.FirebaseService>(),
    ));
    gh.factory<_i20.GetAccountDetailsUseCase>(
        () => _i20.GetAccountDetailsUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i21.GetAllOrdersUseCase>(
        () => _i21.GetAllOrdersUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i22.GetAllProductsUseCase>(
        () => _i22.GetAllProductsUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i23.GetCartStatusUseCase>(
        () => _i23.GetCartStatusUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i24.GetCurrentUserPhoneNumberUseCase>(() =>
        _i24.GetCurrentUserPhoneNumberUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i25.GetItemsInCartUseCase>(
        () => _i25.GetItemsInCartUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i26.GetUserDataStatusUseCase>(
        () => _i26.GetUserDataStatusUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i27.GetUserLoggedInStatusUseCase>(() =>
        _i27.GetUserLoggedInStatusUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i28.LogoutUseCase>(
        () => _i28.LogoutUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i29.MyOrdersCubit>(
        () => _i29.MyOrdersCubit(get<_i21.GetAllOrdersUseCase>()));
    gh.factory<_i30.OtpLoginViewModel>(
        () => _i30.OtpLoginViewModel(get<_i11.SendOTPUseCase>()));
    gh.factory<_i31.PlaceOrderUseCase>(
        () => _i31.PlaceOrderUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i32.ProductAddToCartUseCase>(
        () => _i32.ProductAddToCartUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i33.ProductDeleteCartUseCase>(
        () => _i33.ProductDeleteCartUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i34.ProductViewModel>(() => _i34.ProductViewModel(
          get<_i25.GetItemsInCartUseCase>(),
          get<_i33.ProductDeleteCartUseCase>(),
          get<_i32.ProductAddToCartUseCase>(),
          get<_i23.GetCartStatusUseCase>(),
          get<_i4.DomainMapper>(),
        ));
    gh.factory<_i35.SearchProductsUseCase>(
        () => _i35.SearchProductsUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i36.SetAccountDetailsUseCase>(
        () => _i36.SetAccountDetailsUseCase(get<_i18.FirebaseRepository>()));
    gh.factory<_i37.StreamAccountDetailsUseCaseUseCase>(() =>
        _i37.StreamAccountDetailsUseCaseUseCase(
            get<_i18.FirebaseRepository>()));
    gh.factory<_i38.AddAccountDetailsViewModel>(
        () => _i38.AddAccountDetailsViewModel(
              get<_i36.SetAccountDetailsUseCase>(),
              get<_i20.GetAccountDetailsUseCase>(),
              get<_i12.SetProfileUserDataUseCase>(),
              get<_i24.GetCurrentUserPhoneNumberUseCase>(),
            ));
    gh.factory<_i39.AddAddressViewModel>(
        () => _i39.AddAddressViewModel(get<_i36.SetAccountDetailsUseCase>()));
    gh.factory<_i40.AllProductCubit>(
        () => _i40.AllProductCubit(get<_i22.GetAllProductsUseCase>()));
    gh.factory<_i41.CartViewModel>(() => _i41.CartViewModel(
          get<_i32.ProductAddToCartUseCase>(),
          get<_i33.ProductDeleteCartUseCase>(),
          get<_i31.PlaceOrderUseCase>(),
          get<_i37.StreamAccountDetailsUseCaseUseCase>(),
          get<_i23.GetCartStatusUseCase>(),
        ));
    gh.factory<_i42.CheckStatusViewModel>(() => _i42.CheckStatusViewModel(
          get<_i27.GetUserLoggedInStatusUseCase>(),
          get<_i26.GetUserDataStatusUseCase>(),
        ));
    gh.singleton<_i43.CrashlyticsService>(_i43.CrashlyticsService(
      get<_i26.GetUserDataStatusUseCase>(),
      get<_i9.FirebaseService>(),
      get<_i7.FirebaseCrashlytics>(),
    ));
    gh.factory<_i44.DashboardViewModel>(
        () => _i44.DashboardViewModel(get<_i22.GetAllProductsUseCase>()));
    gh.factory<_i45.HomeScreenViewModel>(() => _i45.HomeScreenViewModel(
          get<_i23.GetCartStatusUseCase>(),
          get<_i37.StreamAccountDetailsUseCaseUseCase>(),
        ));
    gh.factory<_i46.MyAddressViewModel>(() => _i46.MyAddressViewModel(
          get<_i20.GetAccountDetailsUseCase>(),
          get<_i36.SetAccountDetailsUseCase>(),
        ));
    gh.factory<_i47.ProductSearchViewModel>(
        () => _i47.ProductSearchViewModel(get<_i35.SearchProductsUseCase>()));
    return this;
  }
}

class _$FirebaseModule extends _i48.FirebaseModule {}
