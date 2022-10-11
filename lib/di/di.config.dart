// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/services/crashlytics_service.dart' as _i36;
import '../core/utils/validator.dart' as _i11;
import '../data/mapper/data_mapper.dart' as _i3;
import '../data/repository/firebase_repository.dart' as _i12;
import '../data/service/firebase_service.dart' as _i5;
import '../domain/mapper/domain_mapper.dart' as _i4;
import '../domain/usecases/add_product_to_cart_usecase.dart' as _i25;
import '../domain/usecases/delete_product_from_cart_usecase.dart' as _i26;
import '../domain/usecases/get_account_details_usecase.dart' as _i13;
import '../domain/usecases/get_all_orders_usecase.dart' as _i14;
import '../domain/usecases/get_all_product_usecase.dart' as _i15;
import '../domain/usecases/get_cart_status_use_case.dart' as _i16;
import '../domain/usecases/get_current_user_phone_number_usecase.dart' as _i17;
import '../domain/usecases/get_items_in_cart_usecase.dart' as _i18;
import '../domain/usecases/get_user_data_status_usecase.dart' as _i19;
import '../domain/usecases/get_user_logged_in_status.dart' as _i20;
import '../domain/usecases/logout_usecase.dart' as _i21;
import '../domain/usecases/place_order_usecase.dart' as _i24;
import '../domain/usecases/sample_use_case.dart' as _i10;
import '../domain/usecases/search_products_use_case.dart' as _i28;
import '../domain/usecases/send_otp_usecase.dart' as _i7;
import '../domain/usecases/set_account_details_usecase.dart' as _i29;
import '../domain/usecases/set_user_profile_data_usecase.dart' as _i8;
import '../domain/usecases/stream_account_details_usecase.dart' as _i30;
import '../presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i31;
import '../presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i32;
import '../presentation/features/cart/view_model/cart_view_model.dart' as _i34;
import '../presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i35;
import '../presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i37;
import '../presentation/features/home/viewmodel/home_viewmodel.dart' as _i38;
import '../presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i39;
import '../presentation/features/order/view_model/my_orders_cubit.dart' as _i22;
import '../presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i23;
import '../presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i6;
import '../presentation/features/product_detail/view_model/product_view_model.dart'
    as _i27;
import '../presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i33;
import '../presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i40;
import '../presentation/features/splash/view_model/splash_view_model.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

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
    gh.lazySingleton<_i3.DataMapper>(() => _i3.DataMapperImpl());
    gh.lazySingleton<_i4.DomainMapper>(() => _i4.DomainMapperImpl());
    gh.factory<_i5.FirebaseService>(() => _i5.FirebaseService());
    gh.factory<_i6.PhoneLoginViewModel>(() => _i6.PhoneLoginViewModel());
    gh.factory<_i7.SendOTPUseCase>(
        () => _i7.SendOTPUseCase(get<_i5.FirebaseService>()));
    gh.factory<_i8.SetProfileUserDataUseCase>(
        () => _i8.SetProfileUserDataUseCase(get<_i5.FirebaseService>()));
    gh.factory<_i9.SplashViewModel>(() => _i9.SplashViewModel());
    gh.factory<_i10.UseCase>(() => _i10.UseCase());
    gh.singleton<_i11.Validator>(_i11.Validator());
    gh.singleton<_i12.FirebaseRepository>(_i12.FirebaseRepository(
      get<_i3.DataMapper>(),
      get<_i5.FirebaseService>(),
    ));
    gh.factory<_i13.GetAccountDetailsUseCase>(
        () => _i13.GetAccountDetailsUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i14.GetAllOrdersUseCase>(
        () => _i14.GetAllOrdersUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i15.GetAllProductsUseCase>(
        () => _i15.GetAllProductsUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i16.GetCartStatusUseCase>(
        () => _i16.GetCartStatusUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i17.GetCurrentUserPhoneNumberUseCase>(() =>
        _i17.GetCurrentUserPhoneNumberUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i18.GetItemsInCartUseCase>(
        () => _i18.GetItemsInCartUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i19.GetUserDataStatusUseCase>(
        () => _i19.GetUserDataStatusUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i20.GetUserLoggedInStatusUseCase>(() =>
        _i20.GetUserLoggedInStatusUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i21.LogoutUseCase>(
        () => _i21.LogoutUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i22.MyOrdersCubit>(
        () => _i22.MyOrdersCubit(get<_i14.GetAllOrdersUseCase>()));
    gh.factory<_i23.OtpLoginViewModel>(
        () => _i23.OtpLoginViewModel(get<_i7.SendOTPUseCase>()));
    gh.factory<_i24.PlaceOrderUseCase>(
        () => _i24.PlaceOrderUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i25.ProductAddToCartUseCase>(
        () => _i25.ProductAddToCartUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i26.ProductDeleteCartUseCase>(
        () => _i26.ProductDeleteCartUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i27.ProductViewModel>(() => _i27.ProductViewModel(
          get<_i18.GetItemsInCartUseCase>(),
          get<_i26.ProductDeleteCartUseCase>(),
          get<_i25.ProductAddToCartUseCase>(),
          get<_i16.GetCartStatusUseCase>(),
          get<_i4.DomainMapper>(),
        ));
    gh.factory<_i28.SearchProductsUseCase>(
        () => _i28.SearchProductsUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i29.SetAccountDetailsUseCase>(
        () => _i29.SetAccountDetailsUseCase(get<_i12.FirebaseRepository>()));
    gh.factory<_i30.StreamAccountDetailsUseCaseUseCase>(() =>
        _i30.StreamAccountDetailsUseCaseUseCase(
            get<_i12.FirebaseRepository>()));
    gh.factory<_i31.AddAccountDetailsViewModel>(
        () => _i31.AddAccountDetailsViewModel(
              get<_i29.SetAccountDetailsUseCase>(),
              get<_i13.GetAccountDetailsUseCase>(),
              get<_i8.SetProfileUserDataUseCase>(),
              get<_i17.GetCurrentUserPhoneNumberUseCase>(),
            ));
    gh.factory<_i32.AddAddressViewModel>(
        () => _i32.AddAddressViewModel(get<_i29.SetAccountDetailsUseCase>()));
    gh.factory<_i33.AllProductCubit>(
        () => _i33.AllProductCubit(get<_i15.GetAllProductsUseCase>()));
    gh.factory<_i34.CartViewModel>(() => _i34.CartViewModel(
          get<_i25.ProductAddToCartUseCase>(),
          get<_i26.ProductDeleteCartUseCase>(),
          get<_i24.PlaceOrderUseCase>(),
          get<_i30.StreamAccountDetailsUseCaseUseCase>(),
          get<_i16.GetCartStatusUseCase>(),
        ));
    gh.factory<_i35.CheckStatusViewModel>(() => _i35.CheckStatusViewModel(
          get<_i20.GetUserLoggedInStatusUseCase>(),
          get<_i19.GetUserDataStatusUseCase>(),
        ));
    gh.singleton<_i36.CrashlyticsService>(_i36.CrashlyticsService(
      get<_i19.GetUserDataStatusUseCase>(),
      get<_i5.FirebaseService>(),
    ));
    gh.factory<_i37.DashboardViewModel>(
        () => _i37.DashboardViewModel(get<_i15.GetAllProductsUseCase>()));
    gh.factory<_i38.HomeScreenViewModel>(() => _i38.HomeScreenViewModel(
          get<_i16.GetCartStatusUseCase>(),
          get<_i30.StreamAccountDetailsUseCaseUseCase>(),
        ));
    gh.factory<_i39.MyAddressViewModel>(() => _i39.MyAddressViewModel(
          get<_i13.GetAccountDetailsUseCase>(),
          get<_i29.SetAccountDetailsUseCase>(),
        ));
    gh.factory<_i40.ProductSearchViewModel>(
        () => _i40.ProductSearchViewModel(get<_i28.SearchProductsUseCase>()));
    return this;
  }
}
