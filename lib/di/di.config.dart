// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/global_listener/global_listener.dart' as _i9;
import '../core/utils/validator.dart' as _i22;
import '../data/crashlytics/crashlytics_service.dart' as _i28;
import '../data/firebase_manager/firestore_manager.dart' as _i3;
import '../domain/usecases/get_account_details_usecase.dart' as _i4;
import '../domain/usecases/get_all_orders_usecase.dart' as _i5;
import '../domain/usecases/get_current_user_phone_number_usecase.dart' as _i6;
import '../domain/usecases/get_user_data_status_usecase.dart' as _i7;
import '../domain/usecases/get_user_logged_in_status.dart' as _i8;
import '../domain/usecases/sample_use_case.dart' as _i21;
import '../domain/usecases/send_otp_usecase.dart' as _i17;
import '../domain/usecases/set_account_details_usecase.dart' as _i18;
import '../domain/usecases/set_user_profile_data_usecase.dart' as _i19;
import '../presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i23;
import '../presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i24;
import '../presentation/features/cart/view_model/cart_view_model.dart' as _i26;
import '../presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i27;
import '../presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i29;
import '../presentation/features/home/viewmodel/home_viewmodel.dart' as _i10;
import '../presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i11;
import '../presentation/features/order/view_model/my_orders_cubit.dart' as _i12;
import '../presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i13;
import '../presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i14;
import '../presentation/features/product_detail/view_model/product_view_model.dart'
    as _i16;
import '../presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i25;
import '../presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i15;
import '../presentation/features/splash/view_model/splash_view_model.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i6.GetCurrentUserPhoneNumberUseCase>(() =>
        _i6.GetCurrentUserPhoneNumberUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i7.GetUserDataStatusUseCase>(
        () => _i7.GetUserDataStatusUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i8.GetUserLoggedInStatusUseCase>(
        () => _i8.GetUserLoggedInStatusUseCase(get<_i3.FirebaseRepository>()));
    gh.singleton<_i9.GlobalListener>(_i9.GlobalListenerImpl());
    gh.factory<_i10.HomeScreenViewModel>(() => _i10.HomeScreenViewModel(
          get<_i3.FirebaseRepository>(),
          get<_i9.GlobalListener>(),
        ));
    gh.factory<_i11.MyAddressViewModel>(
        () => _i11.MyAddressViewModel(get<_i3.FirebaseRepository>()));
    gh.factory<_i12.MyOrdersCubit>(
        () => _i12.MyOrdersCubit(get<_i5.GetAllOrdersUseCase>()));
    gh.factory<_i13.OtpLoginViewModel>(
        () => _i13.OtpLoginViewModel(get<_i3.FirebaseRepository>()));
    gh.factory<_i14.PhoneLoginViewModel>(() => _i14.PhoneLoginViewModel());
    gh.factory<_i15.ProductSearchViewModel>(
        () => _i15.ProductSearchViewModel(get<_i3.FirebaseRepository>()));
    gh.factory<_i16.ProductViewModel>(
        () => _i16.ProductViewModel(get<_i3.FirebaseRepository>()));
    gh.factory<_i17.SendOTPUseCase>(
        () => _i17.SendOTPUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i18.SetAccountDetailsUseCase>(
        () => _i18.SetAccountDetailsUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i19.SetProfileUserDataUseCase>(
        () => _i19.SetProfileUserDataUseCase(get<_i3.FirebaseRepository>()));
    gh.factory<_i20.SplashViewModel>(() => _i20.SplashViewModel());
    gh.factory<_i21.UseCase>(() => _i21.UseCase());
    gh.singleton<_i22.Validator>(_i22.Validator());
    gh.factory<_i23.AddAccountDetailsViewModel>(
        () => _i23.AddAccountDetailsViewModel(
              get<_i18.SetAccountDetailsUseCase>(),
              get<_i4.GetAccountDetailsUseCase>(),
              get<_i19.SetProfileUserDataUseCase>(),
              get<_i6.GetCurrentUserPhoneNumberUseCase>(),
            ));
    gh.factory<_i24.AddAddressViewModel>(
        () => _i24.AddAddressViewModel(get<_i18.SetAccountDetailsUseCase>()));
    gh.factory<_i25.AllProductCubit>(
        () => _i25.AllProductCubit(get<_i3.FirebaseRepository>()));
    gh.factory<_i26.CartViewModel>(() => _i26.CartViewModel(
          get<_i3.FirebaseRepository>(),
          get<_i9.GlobalListener>(),
        ));
    gh.factory<_i27.CheckStatusViewModel>(() => _i27.CheckStatusViewModel(
          get<_i8.GetUserLoggedInStatusUseCase>(),
          get<_i7.GetUserDataStatusUseCase>(),
        ));
    gh.singleton<_i28.CrashlyticsService>(_i28.CrashlyticsService(
      get<_i7.GetUserDataStatusUseCase>(),
      get<_i3.FirebaseRepository>(),
    ));
    gh.factory<_i29.DashboardViewModel>(
        () => _i29.DashboardViewModel(get<_i3.FirebaseRepository>()));
    return this;
  }
}
