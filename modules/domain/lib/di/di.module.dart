//@GeneratedMicroModule;DomainPackageModule;package:domain/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:domain/repository/auth_repository.dart' as _i20;
import 'package:domain/repository/cart_repository.dart' as _i6;
import 'package:domain/repository/order_repository.dart' as _i11;
import 'package:domain/repository/product_repository.dart' as _i13;
import 'package:domain/repository/user_repository.dart' as _i4;
import 'package:domain/usecases/add_address_usecase.dart' as _i3;
import 'package:domain/usecases/add_product_to_cart_usecase.dart' as _i23;
import 'package:domain/usecases/cart_usecase.dart' as _i5;
import 'package:domain/usecases/delete_product_from_cart_usecase.dart' as _i24;
import 'package:domain/usecases/edit_address_usecase.dart' as _i7;
import 'package:domain/usecases/get_account_details_usecase.dart' as _i8;
import 'package:domain/usecases/get_address_usecase.dart' as _i9;
import 'package:domain/usecases/get_all_orders_usecase.dart' as _i10;
import 'package:domain/usecases/get_all_product_usecase.dart' as _i12;
import 'package:domain/usecases/get_cart_status_use_case.dart' as _i14;
import 'package:domain/usecases/get_current_user_phone_number_usecase.dart'
    as _i15;
import 'package:domain/usecases/get_items_in_cart_usecase.dart' as _i16;
import 'package:domain/usecases/get_product_details_usecase.dart' as _i17;
import 'package:domain/usecases/get_user_data_status_usecase.dart' as _i18;
import 'package:domain/usecases/get_user_logged_in_status.dart' as _i19;
import 'package:domain/usecases/logout_usecase.dart' as _i21;
import 'package:domain/usecases/notification_handler_usecase.dart' as _i33;
import 'package:domain/usecases/place_order_usecase.dart' as _i22;
import 'package:domain/usecases/sample_use_case.dart' as _i32;
import 'package:domain/usecases/search_products_use_case.dart' as _i25;
import 'package:domain/usecases/send_otp_usecase.dart' as _i26;
import 'package:domain/usecases/set_account_details_usecase.dart' as _i27;
import 'package:domain/usecases/set_device_token_usecase.dart' as _i28;
import 'package:domain/usecases/set_user_profile_data_usecase.dart' as _i29;
import 'package:domain/usecases/stream_account_details_usecase.dart' as _i30;
import 'package:domain/usecases/update_cart_usecase.dart' as _i31;
import 'package:injectable/injectable.dart' as _i1;

class DomainPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.factory<_i3.AddAddressUseCase>(
        () => _i3.AddAddressUseCase(gh<_i4.UserRepository>()));
    gh.singleton<_i5.CartUseCase>(_i5.CartUseCase(gh<_i6.CartRepository>()));
    gh.factory<_i7.EditAddressUseCase>(
        () => _i7.EditAddressUseCase(gh<_i4.UserRepository>()));
    gh.factory<_i8.GetAccountDetailsUseCase>(
        () => _i8.GetAccountDetailsUseCase(gh<_i4.UserRepository>()));
    gh.factory<_i9.GetAddressUseCase>(
        () => _i9.GetAddressUseCase(gh<_i4.UserRepository>()));
    gh.factory<_i10.GetAllOrdersUseCase>(
        () => _i10.GetAllOrdersUseCase(gh<_i11.OrderRepository>()));
    gh.factory<_i12.GetAllProductsUseCase>(
        () => _i12.GetAllProductsUseCase(gh<_i13.ProductRepository>()));
    gh.factory<_i14.GetCartStatusUseCase>(
        () => _i14.GetCartStatusUseCase(gh<_i6.CartRepository>()));
    gh.factory<_i15.GetCurrentUserPhoneNumberUseCase>(
        () => _i15.GetCurrentUserPhoneNumberUseCase());
    gh.factory<_i16.GetItemsInCartUseCase>(() => _i16.GetItemsInCartUseCase());
    gh.factory<_i17.GetProductDetailsUseCase>(
        () => _i17.GetProductDetailsUseCase(gh<_i13.ProductRepository>()));
    gh.factory<_i18.GetUserDataStatusUseCase>(
        () => _i18.GetUserDataStatusUseCase());
    gh.factory<_i19.GetUserLoggedInStatusUseCase>(
        () => _i19.GetUserLoggedInStatusUseCase(gh<_i20.AuthRepository>()));
    gh.factory<_i21.LogoutUseCase>(
        () => _i21.LogoutUseCase(gh<_i20.AuthRepository>()));
    gh.factory<_i22.PlaceOrderUseCase>(
        () => _i22.PlaceOrderUseCase(gh<_i11.OrderRepository>()));
    gh.factory<_i23.ProductAddToCartUseCase>(
        () => _i23.ProductAddToCartUseCase(gh<_i6.CartRepository>()));
    gh.factory<_i24.ProductDeleteCartUseCase>(
        () => _i24.ProductDeleteCartUseCase(gh<_i6.CartRepository>()));
    gh.factory<_i25.SearchProductsUseCase>(
        () => _i25.SearchProductsUseCase(gh<_i13.ProductRepository>()));
    gh.factory<_i26.SendOTPUseCase>(
        () => _i26.SendOTPUseCase(gh<_i20.AuthRepository>()));
    gh.factory<_i27.SetAccountDetailsUseCase>(
        () => _i27.SetAccountDetailsUseCase());
    gh.factory<_i28.SetDeviceTokenUseCase>(
        () => _i28.SetDeviceTokenUseCase(gh<_i20.AuthRepository>()));
    gh.factory<_i29.SetProfileUserDataUseCase>(
        () => _i29.SetProfileUserDataUseCase());
    gh.factory<_i30.StreamAccountDetailsUseCaseUseCase>(() =>
        _i30.StreamAccountDetailsUseCaseUseCase(gh<_i4.UserRepository>()));
    gh.factory<_i31.UpdateCartUseCase>(
        () => _i31.UpdateCartUseCase(gh<_i6.CartRepository>()));
    gh.factory<_i32.UseCase>(() => _i32.UseCase());
    gh.factory<_i33.PushNotificationHandlerUseCase>(() =>
        _i33.PushNotificationHandlerUseCase(gh<_i28.SetDeviceTokenUseCase>()));
  }
}
