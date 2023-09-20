//@GeneratedMicroModule;PresentationPackageModule;package:presentation/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:domain/usecases/add_address_usecase.dart' as _i6;
import 'package:domain/usecases/add_product_to_cart_usecase.dart' as _i33;
import 'package:domain/usecases/delete_product_from_cart_usecase.dart' as _i12;
import 'package:domain/usecases/edit_address_usecase.dart' as _i7;
import 'package:domain/usecases/get_account_details_usecase.dart' as _i4;
import 'package:domain/usecases/get_address_usecase.dart' as _i16;
import 'package:domain/usecases/get_all_orders_usecase.dart' as _i25;
import 'package:domain/usecases/get_all_product_usecase.dart' as _i9;
import 'package:domain/usecases/get_cart_status_use_case.dart' as _i14;
import 'package:domain/usecases/get_items_in_cart_usecase.dart' as _i32;
import 'package:domain/usecases/get_product_details_usecase.dart' as _i34;
import 'package:domain/usecases/get_user_logged_in_status.dart' as _i18;
import 'package:domain/usecases/logout_usecase.dart' as _i22;
import 'package:domain/usecases/place_order_usecase.dart' as _i13;
import 'package:domain/usecases/search_products_use_case.dart' as _i30;
import 'package:domain/usecases/send_otp_usecase.dart' as _i27;
import 'package:domain/usecases/stream_account_details_usecase.dart' as _i21;
import 'package:domain/usecases/update_cart_usecase.dart' as _i15;
import 'package:injectable/injectable.dart' as _i1;
import 'package:presentation/features/add_account_detail/view_model/add_account_details_view_model.dart'
    as _i3;
import 'package:presentation/features/add_address/view_model/add_address_view_model.dart'
    as _i5;
import 'package:presentation/features/app_settings/view_model/app_settings_view_model.dart'
    as _i10;
import 'package:presentation/features/cart/view_model/cart_view_model.dart'
    as _i11;
import 'package:presentation/features/check_status/view_model/check_status_bloc.dart'
    as _i17;
import 'package:presentation/features/dashboard/view_model/dashboard_view_model.dart'
    as _i19;
import 'package:presentation/features/home/viewmodel/home_viewmodel.dart'
    as _i20;
import 'package:presentation/features/my_address/view_model/my_address_view_model.dart'
    as _i23;
import 'package:presentation/features/order/view_model/my_orders_cubit.dart'
    as _i24;
import 'package:presentation/features/otp_login/view_model/otp_login_view_model.dart'
    as _i26;
import 'package:presentation/features/phone_login/view_model/phone_login_view_model.dart'
    as _i28;
import 'package:presentation/features/product_detail/view_model/product_view_model.dart'
    as _i31;
import 'package:presentation/features/product_list/view_model/all_product_cubit.dart'
    as _i8;
import 'package:presentation/features/search/view_model/product_search_viewmodel.dart'
    as _i29;
import 'package:presentation/features/splash/view_model/splash_view_model.dart'
    as _i35;

class PresentationPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.factory<_i3.AddAccountDetailsViewModel>(() =>
        _i3.AddAccountDetailsViewModel(gh<_i4.GetAccountDetailsUseCase>()));
    gh.factory<_i5.AddAddressViewModel>(() => _i5.AddAddressViewModel(
          gh<_i6.AddAddressUseCase>(),
          gh<_i7.EditAddressUseCase>(),
        ));
    gh.factory<_i8.AllProductCubit>(
        () => _i8.AllProductCubit(gh<_i9.GetAllProductsUseCase>()));
    gh.singleton<_i10.AppSettingsViewModel>(_i10.AppSettingsViewModel());
    gh.factory<_i11.CartViewModel>(() => _i11.CartViewModel(
          gh<_i12.ProductDeleteCartUseCase>(),
          gh<_i13.PlaceOrderUseCase>(),
          gh<_i14.GetCartStatusUseCase>(),
          gh<_i15.UpdateCartUseCase>(),
          gh<_i16.GetAddressUseCase>(),
        ));
    gh.factory<_i17.CheckStatusViewModel>(() =>
        _i17.CheckStatusViewModel(gh<_i18.GetUserLoggedInStatusUseCase>()));
    gh.factory<_i19.DashboardViewModel>(
        () => _i19.DashboardViewModel(gh<_i9.GetAllProductsUseCase>()));
    gh.factory<_i20.HomeScreenViewModel>(() => _i20.HomeScreenViewModel(
          gh<_i14.GetCartStatusUseCase>(),
          gh<_i21.StreamAccountDetailsUseCaseUseCase>(),
          gh<_i16.GetAddressUseCase>(),
          gh<_i22.LogoutUseCase>(),
        ));
    gh.factory<_i23.MyAddressViewModel>(() => _i23.MyAddressViewModel(
          gh<_i16.GetAddressUseCase>(),
          gh<_i7.EditAddressUseCase>(),
        ));
    gh.factory<_i24.MyOrdersCubit>(
        () => _i24.MyOrdersCubit(gh<_i25.GetAllOrdersUseCase>()));
    gh.factory<_i26.OtpLoginViewModel>(
        () => _i26.OtpLoginViewModel(gh<_i27.SendOTPUseCase>()));
    gh.factory<_i28.PhoneLoginViewModel>(() => _i28.PhoneLoginViewModel());
    gh.factory<_i29.ProductSearchViewModel>(
        () => _i29.ProductSearchViewModel(gh<_i30.SearchProductsUseCase>()));
    gh.factory<_i31.ProductViewModel>(() => _i31.ProductViewModel(
          gh<_i32.GetItemsInCartUseCase>(),
          gh<_i33.ProductAddToCartUseCase>(),
          gh<_i14.GetCartStatusUseCase>(),
          gh<_i15.UpdateCartUseCase>(),
          gh<_i34.GetProductDetailsUseCase>(),
        ));
    gh.factory<_i35.SplashViewModel>(() => _i35.SplashViewModel());
  }
}
