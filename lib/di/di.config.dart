// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/global_listener/global_listener.dart' as _i11;
import '../core/utils/validator.dart' as _i26;
import '../data/crashlytics/crashlytics_service.dart' as _i32;
import '../data/firebase_manager/firestore_manager.dart' as _i3;
import '../domain/usecases/add_product_to_cart_usecase.dart' as _i17;
import '../domain/usecases/delete_product_from_cart_usecase.dart' as _i18;
import '../domain/usecases/get_account_details_usecase.dart' as _i4;
import '../domain/usecases/get_all_orders_usecase.dart' as _i5;
import '../domain/usecases/get_all_product_usecase.dart' as _i6;
import '../domain/usecases/get_current_user_phone_number_usecase.dart' as _i7;
import '../domain/usecases/get_items_in_cart_usecase.dart' as _i8;
import '../domain/usecases/get_user_data_status_usecase.dart' as _i9;
import '../domain/usecases/get_user_logged_in_status.dart' as _i10;
import '../domain/usecases/sample_use_case.dart' as _i25;
import '../domain/usecases/send_otp_usecase.dart' as _i21;
import '../domain/usecases/set_account_details_usecase.dart' as _i22;
import '../domain/usecases/set_user_profile_data_usecase.dart' as _i23;
import '../presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i27;
import '../presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i28;
import '../presentation/features/cart/view_model/cart_view_model.dart' as _i30;
import '../presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i31;
import '../presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i33;
import '../presentation/features/home/viewmodel/home_viewmodel.dart' as _i12;
import '../presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i13;
import '../presentation/features/order/view_model/my_orders_cubit.dart' as _i14;
import '../presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i15;
import '../presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i16;
import '../presentation/features/product_detail/view_model/product_view_model.dart'
    as _i20;
import '../presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i29;
import '../presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i19;
import '../presentation/features/splash/view_model/splash_view_model.dart'
    as _i24; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i3.FirebaseRepository>(() => _i3.FirebaseRepository());
    gh.factory<_i4.GetAccountDetailsUseCase>(
        () => _i4.GetAccountDetailsUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i5.GetAllOrdersUseCase>(
        () => _i5.GetAllOrdersUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i6.GetAllOrdersUseCase>(
        () => _i6.GetAllOrdersUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i7.GetCurrentUserPhoneNumberUseCase>(() =>
        _i7.GetCurrentUserPhoneNumberUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i8.GetItemsInCartUseCase>(
        () => _i8.GetItemsInCartUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i9.GetUserDataStatusUseCase>(
        () => _i9.GetUserDataStatusUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i10.GetUserLoggedInStatusUseCase>(
        () => _i10.GetUserLoggedInStatusUseCase(get<_i3.FirebaseRepository>()));
    gh.singleton<_i11.GlobalListener>(_i11.GlobalListenerImpl());
    gh.factory<_i12.HomeScreenViewModel>(() => _i12.HomeScreenViewModel(
          get<_i3.FirebaseRepository>(),
          get<_i11.GlobalListener>(),
        ));
    gh.factory<_i13.MyAddressViewModel>(
        () => _i13.MyAddressViewModel(get<_i3.FirebaseRepository>()));
    gh.factory<_i14.MyOrdersCubit>(
        () => _i14.MyOrdersCubit(get<_i5.GetAllOrdersUseCase>()));
    gh.factory<_i15.OtpLoginViewModel>(
        () => _i15.OtpLoginViewModel(get<_i3.FirebaseRepository>()));
    gh.factory<_i16.PhoneLoginViewModel>(() => _i16.PhoneLoginViewModel());
    gh.factory<_i17.ProductAddToCartUseCase>(
        () => _i17.ProductAddToCartUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i18.ProductDeleteCartUseCase>(
        () => _i18.ProductDeleteCartUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i19.ProductSearchViewModel>(
        () => _i19.ProductSearchViewModel(get<_i3.FirebaseRepository>()));
    gh.factory<_i20.ProductViewModel>(() => _i20.ProductViewModel(
          get<_i3.FirebaseRepository>(),
          get<_i8.GetItemsInCartUseCase>(),
          get<_i18.ProductDeleteCartUseCase>(),
          get<_i17.ProductAddToCartUseCase>(),
        ));
    gh.factory<_i21.SendOTPUseCase>(
        () => _i21.SendOTPUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i22.SetAccountDetailsUseCase>(
        () => _i22.SetAccountDetailsUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i23.SetProfileUserDataUseCase>(
        () => _i23.SetProfileUserDataUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i24.SplashViewModel>(() => _i24.SplashViewModel());
    gh.factory<_i25.UseCase>(() => _i25.UseCase());
    gh.singleton<_i26.Validator>(_i26.Validator());
    gh.factory<_i27.AddAccountDetailsViewModel>(
        () => _i27.AddAccountDetailsViewModel(
              get<_i22.SetAccountDetailsUseCase>(),
              get<_i4.GetAccountDetailsUseCase>(),
              get<_i23.SetProfileUserDataUseCase>(),
              get<_i7.GetCurrentUserPhoneNumberUseCase>(),
            ));
    gh.factory<_i28.AddAddressViewModel>(
        () => _i28.AddAddressViewModel(get<_i22.SetAccountDetailsUseCase>()));
    gh.factory<_i29.AllProductCubit>(
        () => _i29.AllProductCubit(get<_i3.FirebaseRepository>()));
    gh.factory<_i30.CartViewModel>(() => _i30.CartViewModel(
          get<_i3.FirebaseRepository>(),
          get<_i11.GlobalListener>(),
        ));
    gh.factory<_i31.CheckStatusViewModel>(() => _i31.CheckStatusViewModel(
          get<_i10.GetUserLoggedInStatusUseCase>(),
          get<_i9.GetUserDataStatusUseCase>(),
        ));
    gh.singleton<_i32.CrashlyticsService>(_i32.CrashlyticsService(
      get<_i9.GetUserDataStatusUseCase>(),
      get<_i3.FirebaseRepository>(),
    ));
    gh.factory<_i33.DashboardViewModel>(
        () => _i33.DashboardViewModel(get<_i3.FirebaseRepository>()));
    return this;
  }
}
