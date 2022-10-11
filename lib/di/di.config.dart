// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/services/crashlytics_service.dart' as _i40;
import '../core/utils/validator.dart' as _i14;
import '../data/mapper/data_mapper.dart' as _i3;
import '../data/repository/firebase_repository.dart' as _i16;
import '../data/service/firebase_service.dart' as _i8;
import '../domain/mapper/domain_mapper.dart' as _i4;
import '../domain/repository/firebase_repository.dart' as _i15;
import '../domain/usecases/add_product_to_cart_usecase.dart' as _i29;
import '../domain/usecases/delete_product_from_cart_usecase.dart' as _i30;
import '../domain/usecases/get_account_details_usecase.dart' as _i17;
import '../domain/usecases/get_all_orders_usecase.dart' as _i18;
import '../domain/usecases/get_all_product_usecase.dart' as _i19;
import '../domain/usecases/get_cart_status_use_case.dart' as _i20;
import '../domain/usecases/get_current_user_phone_number_usecase.dart' as _i21;
import '../domain/usecases/get_items_in_cart_usecase.dart' as _i22;
import '../domain/usecases/get_user_data_status_usecase.dart' as _i23;
import '../domain/usecases/get_user_logged_in_status.dart' as _i24;
import '../domain/usecases/logout_usecase.dart' as _i25;
import '../domain/usecases/place_order_usecase.dart' as _i28;
import '../domain/usecases/sample_use_case.dart' as _i13;
import '../domain/usecases/search_products_use_case.dart' as _i32;
import '../domain/usecases/send_otp_usecase.dart' as _i10;
import '../domain/usecases/set_account_details_usecase.dart' as _i33;
import '../domain/usecases/set_user_profile_data_usecase.dart' as _i11;
import '../domain/usecases/stream_account_details_usecase.dart' as _i34;
import '../presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i35;
import '../presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i36;
import '../presentation/features/cart/view_model/cart_view_model.dart' as _i38;
import '../presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i39;
import '../presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i41;
import '../presentation/features/home/viewmodel/home_viewmodel.dart' as _i42;
import '../presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i43;
import '../presentation/features/order/view_model/my_orders_cubit.dart' as _i26;
import '../presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i27;
import '../presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i9;
import '../presentation/features/product_detail/view_model/product_view_model.dart'
    as _i31;
import '../presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i37;
import '../presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i44;
import '../presentation/features/splash/view_model/splash_view_model.dart'
    as _i12;
import 'module/firebase_module.dart'
    as _i45; // ignore_for_file: unnecessary_lambdas

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
    gh.singleton<_i5.FirebaseAuth>(firebaseModule.firebaseAuth);
    gh.singleton<_i6.FirebaseCrashlytics>(firebaseModule.firebaseCrashlytics);
    gh.singleton<_i7.FirebaseFirestore>(firebaseModule.firebaseFireStore);
    gh.factory<_i8.FirebaseService>(() => _i8.FirebaseService(
          get<_i7.FirebaseFirestore>(),
          get<_i5.FirebaseAuth>(),
        ));
    gh.factory<_i9.PhoneLoginViewModel>(() => _i9.PhoneLoginViewModel());
    gh.factory<_i10.SendOTPUseCase>(
        () => _i10.SendOTPUseCase(get<_i8.FirebaseService>()));
    gh.factory<_i11.SetProfileUserDataUseCase>(
        () => _i11.SetProfileUserDataUseCase(get<_i8.FirebaseService>()));
    gh.factory<_i12.SplashViewModel>(() => _i12.SplashViewModel());
    gh.factory<_i13.UseCase>(() => _i13.UseCase());
    gh.singleton<_i14.Validator>(_i14.Validator());
    gh.singleton<_i15.FirebaseRepository>(_i16.FirebaseRepositoryImpl(
      get<_i3.DataMapper>(),
      get<_i8.FirebaseService>(),
    ));
    gh.factory<_i17.GetAccountDetailsUseCase>(
        () => _i17.GetAccountDetailsUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i18.GetAllOrdersUseCase>(
        () => _i18.GetAllOrdersUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i19.GetAllProductsUseCase>(
        () => _i19.GetAllProductsUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i20.GetCartStatusUseCase>(
        () => _i20.GetCartStatusUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i21.GetCurrentUserPhoneNumberUseCase>(() =>
        _i21.GetCurrentUserPhoneNumberUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i22.GetItemsInCartUseCase>(
        () => _i22.GetItemsInCartUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i23.GetUserDataStatusUseCase>(
        () => _i23.GetUserDataStatusUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i24.GetUserLoggedInStatusUseCase>(() =>
        _i24.GetUserLoggedInStatusUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i25.LogoutUseCase>(
        () => _i25.LogoutUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i26.MyOrdersCubit>(
        () => _i26.MyOrdersCubit(get<_i18.GetAllOrdersUseCase>()));
    gh.factory<_i27.OtpLoginViewModel>(
        () => _i27.OtpLoginViewModel(get<_i10.SendOTPUseCase>()));
    gh.factory<_i28.PlaceOrderUseCase>(
        () => _i28.PlaceOrderUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i29.ProductAddToCartUseCase>(
        () => _i29.ProductAddToCartUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i30.ProductDeleteCartUseCase>(
        () => _i30.ProductDeleteCartUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i31.ProductViewModel>(() => _i31.ProductViewModel(
          get<_i22.GetItemsInCartUseCase>(),
          get<_i30.ProductDeleteCartUseCase>(),
          get<_i29.ProductAddToCartUseCase>(),
          get<_i20.GetCartStatusUseCase>(),
          get<_i4.DomainMapper>(),
        ));
    gh.factory<_i32.SearchProductsUseCase>(
        () => _i32.SearchProductsUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i33.SetAccountDetailsUseCase>(
        () => _i33.SetAccountDetailsUseCase(get<_i15.FirebaseRepository>()));
    gh.factory<_i34.StreamAccountDetailsUseCaseUseCase>(() =>
        _i34.StreamAccountDetailsUseCaseUseCase(
            get<_i15.FirebaseRepository>()));
    gh.factory<_i35.AddAccountDetailsViewModel>(
        () => _i35.AddAccountDetailsViewModel(
              get<_i33.SetAccountDetailsUseCase>(),
              get<_i17.GetAccountDetailsUseCase>(),
              get<_i11.SetProfileUserDataUseCase>(),
              get<_i21.GetCurrentUserPhoneNumberUseCase>(),
            ));
    gh.factory<_i36.AddAddressViewModel>(
        () => _i36.AddAddressViewModel(get<_i33.SetAccountDetailsUseCase>()));
    gh.factory<_i37.AllProductCubit>(
        () => _i37.AllProductCubit(get<_i19.GetAllProductsUseCase>()));
    gh.factory<_i38.CartViewModel>(() => _i38.CartViewModel(
          get<_i29.ProductAddToCartUseCase>(),
          get<_i30.ProductDeleteCartUseCase>(),
          get<_i28.PlaceOrderUseCase>(),
          get<_i34.StreamAccountDetailsUseCaseUseCase>(),
          get<_i20.GetCartStatusUseCase>(),
        ));
    gh.factory<_i39.CheckStatusViewModel>(() => _i39.CheckStatusViewModel(
          get<_i24.GetUserLoggedInStatusUseCase>(),
          get<_i23.GetUserDataStatusUseCase>(),
        ));
    gh.singleton<_i40.CrashlyticsService>(_i40.CrashlyticsService(
      get<_i23.GetUserDataStatusUseCase>(),
      get<_i8.FirebaseService>(),
      get<_i6.FirebaseCrashlytics>(),
    ));
    gh.factory<_i41.DashboardViewModel>(
        () => _i41.DashboardViewModel(get<_i19.GetAllProductsUseCase>()));
    gh.factory<_i42.HomeScreenViewModel>(() => _i42.HomeScreenViewModel(
          get<_i20.GetCartStatusUseCase>(),
          get<_i34.StreamAccountDetailsUseCaseUseCase>(),
        ));
    gh.factory<_i43.MyAddressViewModel>(() => _i43.MyAddressViewModel(
          get<_i17.GetAccountDetailsUseCase>(),
          get<_i33.SetAccountDetailsUseCase>(),
        ));
    gh.factory<_i44.ProductSearchViewModel>(
        () => _i44.ProductSearchViewModel(get<_i32.SearchProductsUseCase>()));
    return this;
  }
}

class _$FirebaseModule extends _i45.FirebaseModule {}
