// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/global_listener/global_listener.dart' as _i5;
import '../core/utils/validator.dart' as _i15;
import '../data/crashlytics/crashlytics_service.dart' as _i21;
import '../data/firebase_manager/firestore_manager.dart' as _i3;
import '../domain/usecases/get_all_orders_usecase.dart' as _i4;
import '../domain/usecases/send_otp_usecase.dart' as _i13;
import '../presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i16;
import '../presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i17;
import '../presentation/features/cart/view_model/cart_view_model.dart' as _i19;
import '../presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i20;
import '../presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i22;
import '../presentation/features/home/viewmodel/home_viewmodel.dart' as _i6;
import '../presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i7;
import '../presentation/features/order/view_model/my_orders_cubit.dart' as _i8;
import '../presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i9;
import '../presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i10;
import '../presentation/features/product_detail/view_model/product_view_model.dart'
    as _i12;
import '../presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i18;
import '../presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i11;
import '../presentation/features/splash/view_model/splash_view_model.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  _i1.GetIt $initGetIt(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i3.FirebaseManager>(() => _i3.FirebaseManager());
    gh.factory<_i4.GetAllOrdersUseCase>(
        () => _i4.GetAllOrdersUseCase(get<_i3.FirebaseManager>()));
    gh.singleton<_i5.GlobalListener>(_i5.GlobalListenerImpl());
    gh.factory<_i6.HomeScreenViewModel>(() => _i6.HomeScreenViewModel(
        get<_i3.FirebaseManager>(), get<_i5.GlobalListener>()));
    gh.factory<_i7.MyAddressViewModel>(
        () => _i7.MyAddressViewModel(get<_i3.FirebaseManager>()));
    gh.factory<_i8.MyOrdersCubit>(
        () => _i8.MyOrdersCubit(get<_i4.GetAllOrdersUseCase>()));
    gh.factory<_i9.OtpLoginViewModel>(
        () => _i9.OtpLoginViewModel(get<_i3.FirebaseManager>()));
    gh.factory<_i10.PhoneLoginViewModel>(() => _i10.PhoneLoginViewModel());
    gh.factory<_i11.ProductSearchViewModel>(
        () => _i11.ProductSearchViewModel(get<_i3.FirebaseManager>()));
    gh.factory<_i12.ProductViewModel>(
        () => _i12.ProductViewModel(get<_i3.FirebaseManager>()));
    gh.factory<_i13.SendOTPUseCase>(
        () => _i13.SendOTPUseCase(get<_i3.FirebaseManager>()));
    gh.factory<_i14.SplashViewModel>(() => _i14.SplashViewModel());
    gh.singleton<_i15.Validator>(_i15.Validator());
    gh.factory<_i16.AddAccountDetailsViewModel>(
        () => _i16.AddAccountDetailsViewModel(get<_i3.FirebaseManager>()));
    gh.factory<_i17.AddAddressViewModel>(
        () => _i17.AddAddressViewModel(get<_i3.FirebaseManager>()));
    gh.factory<_i18.AllProductCubit>(
        () => _i18.AllProductCubit(get<_i3.FirebaseManager>()));
    gh.factory<_i19.CartViewModel>(() => _i19.CartViewModel(
        get<_i3.FirebaseManager>(), get<_i5.GlobalListener>()));
    gh.factory<_i20.CheckStatusViewModel>(
        () => _i20.CheckStatusViewModel(get<_i3.FirebaseManager>()));
    gh.singleton<_i21.CrashlyticsService>(
        _i21.CrashlyticsService(get<_i3.FirebaseManager>()));
    gh.factory<_i22.DashboardViewModel>(
        () => _i22.DashboardViewModel(get<_i3.FirebaseManager>()));
    return this;
  }
}
