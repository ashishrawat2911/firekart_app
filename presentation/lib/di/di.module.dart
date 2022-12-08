//@GeneratedMicroModule;PresentationPackageModule;package:presentation/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:domain/di/di.module.dart' as _i3;
import 'package:domain/di/di.module.dart';
import 'package:domain/mapper/domain_mapper.dart' as _i34;
import 'package:domain/usecases/add_product_to_cart_usecase.dart' as _i14;
import 'package:domain/usecases/delete_product_from_cart_usecase.dart' as _i15;
import 'package:domain/usecases/get_account_details_usecase.dart' as _i6;
import 'package:domain/usecases/get_all_orders_usecase.dart' as _i26;
import 'package:domain/usecases/get_all_product_usecase.dart' as _i11;
import 'package:domain/usecases/get_cart_status_use_case.dart' as _i18;
import 'package:domain/usecases/get_current_user_phone_number_usecase.dart'
    as _i8;
import 'package:domain/usecases/get_items_in_cart_usecase.dart' as _i33;
import 'package:domain/usecases/get_user_data_status_usecase.dart' as _i21;
import 'package:domain/usecases/get_user_logged_in_status.dart' as _i20;
import 'package:domain/usecases/place_order_usecase.dart' as _i16;
import 'package:domain/usecases/search_products_use_case.dart' as _i31;
import 'package:domain/usecases/send_otp_usecase.dart' as _i28;
import 'package:domain/usecases/set_account_details_usecase.dart' as _i5;
import 'package:domain/usecases/set_user_profile_data_usecase.dart' as _i7;
import 'package:domain/usecases/stream_account_details_usecase.dart' as _i17;
import 'package:injectable/injectable.dart' as _i1;
import 'package:presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i4;
import 'package:presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i9;
import 'package:presentation/features/app_settings/view_model/app_settings_view_model.dart'
    as _i12;
import 'package:presentation/features/cart/view_model/cart_view_model.dart'
    as _i13;
import 'package:presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i19;
import 'package:presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i22;
import 'package:presentation/features/home/viewmodel/home_viewmodel.dart'
    as _i23;
import 'package:presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i24;
import 'package:presentation/features/order/view_model/my_orders_cubit.dart'
    as _i25;
import 'package:presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i27;
import 'package:presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i29;
import 'package:presentation/features/product_detail/view_model/product_view_model.dart'
    as _i32;
import 'package:presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i10;
import 'package:presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i30;
import 'package:presentation/features/splash/view_model/splash_view_model.dart'
    as _i35;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
class PresentationPackageModule extends _i1.MicroPackageModule {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) async {
    await _i3.DomainPackageModule().init(gh);
    gh.factory<_i4.AddAccountDetailsViewModel>(
        () => _i4.AddAccountDetailsViewModel(
              gh<_i5.SetAccountDetailsUseCase>(),
              gh<_i6.GetAccountDetailsUseCase>(),
              gh<_i7.SetProfileUserDataUseCase>(),
              gh<_i8.GetCurrentUserPhoneNumberUseCase>(),
            ));
    gh.factory<_i9.AddAddressViewModel>(
        () => _i9.AddAddressViewModel(gh<_i5.SetAccountDetailsUseCase>()));
    gh.factory<_i10.AllProductCubit>(
        () => _i10.AllProductCubit(gh<_i11.GetAllProductsUseCase>()));
    gh.singleton<_i12.AppSettingsViewModel>(_i12.AppSettingsViewModel());
    gh.factory<_i13.CartViewModel>(() => _i13.CartViewModel(
          gh<_i14.ProductAddToCartUseCase>(),
          gh<_i15.ProductDeleteCartUseCase>(),
          gh<_i16.PlaceOrderUseCase>(),
          gh<_i17.StreamAccountDetailsUseCaseUseCase>(),
          gh<_i18.GetCartStatusUseCase>(),
        ));
    gh.factory<_i19.CheckStatusViewModel>(() => _i19.CheckStatusViewModel(
          gh<_i20.GetUserLoggedInStatusUseCase>(),
          gh<_i21.GetUserDataStatusUseCase>(),
        ));
    gh.factory<_i22.DashboardViewModel>(
        () => _i22.DashboardViewModel(gh<_i11.GetAllProductsUseCase>()));
    gh.factory<_i23.HomeScreenViewModel>(() => _i23.HomeScreenViewModel(
          gh<_i18.GetCartStatusUseCase>(),
          gh<_i17.StreamAccountDetailsUseCaseUseCase>(),
        ));
    gh.factory<_i24.MyAddressViewModel>(() => _i24.MyAddressViewModel(
          gh<_i6.GetAccountDetailsUseCase>(),
          gh<_i5.SetAccountDetailsUseCase>(),
        ));
    gh.factory<_i25.MyOrdersCubit>(
        () => _i25.MyOrdersCubit(gh<_i26.GetAllOrdersUseCase>()));
    gh.factory<_i27.OtpLoginViewModel>(
        () => _i27.OtpLoginViewModel(gh<_i28.SendOTPUseCase>()));
    gh.factory<_i29.PhoneLoginViewModel>(() => _i29.PhoneLoginViewModel());
    gh.factory<_i30.ProductSearchViewModel>(
        () => _i30.ProductSearchViewModel(gh<_i31.SearchProductsUseCase>()));
    gh.factory<_i32.ProductViewModel>(() => _i32.ProductViewModel(
          gh<_i33.GetItemsInCartUseCase>(),
          gh<_i15.ProductDeleteCartUseCase>(),
          gh<_i14.ProductAddToCartUseCase>(),
          gh<_i18.GetCartStatusUseCase>(),
          gh<_i34.DomainMapper>(),
        ));
    gh.factory<_i35.SplashViewModel>(() => _i35.SplashViewModel());
  }
}
