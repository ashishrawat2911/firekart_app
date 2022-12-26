//@GeneratedMicroModule;DomainPackageModule;package:domain/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:domain/mapper/domain_mapper.dart' as _i3;
import 'package:domain/repository/firebase_repository.dart' as _i5;
import 'package:domain/usecases/add_product_to_cart_usecase.dart' as _i15;
import 'package:domain/usecases/delete_product_from_cart_usecase.dart' as _i16;
import 'package:domain/usecases/get_account_details_usecase.dart' as _i4;
import 'package:domain/usecases/get_all_orders_usecase.dart' as _i6;
import 'package:domain/usecases/get_all_product_usecase.dart' as _i7;
import 'package:domain/usecases/get_cart_status_use_case.dart' as _i8;
import 'package:domain/usecases/get_current_user_phone_number_usecase.dart'
    as _i9;
import 'package:domain/usecases/get_items_in_cart_usecase.dart' as _i10;
import 'package:domain/usecases/get_user_data_status_usecase.dart' as _i11;
import 'package:domain/usecases/get_user_logged_in_status.dart' as _i12;
import 'package:domain/usecases/logout_usecase.dart' as _i13;
import 'package:domain/usecases/place_order_usecase.dart' as _i14;
import 'package:domain/usecases/sample_use_case.dart' as _i22;
import 'package:domain/usecases/search_products_use_case.dart' as _i17;
import 'package:domain/usecases/send_otp_usecase.dart' as _i18;
import 'package:domain/usecases/set_account_details_usecase.dart' as _i19;
import 'package:domain/usecases/set_user_profile_data_usecase.dart' as _i20;
import 'package:domain/usecases/stream_account_details_usecase.dart' as _i21;
import 'package:injectable/injectable.dart' as _i1;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
class DomainPackageModule extends _i1.MicroPackageModule {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.lazySingleton<_i3.DomainMapper>(() => _i3.DomainMapperImpl());
    gh.factory<_i4.GetAccountDetailsUseCase>(
        () => _i4.GetAccountDetailsUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i6.GetAllOrdersUseCase>(
        () => _i6.GetAllOrdersUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i7.GetAllProductsUseCase>(
        () => _i7.GetAllProductsUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i8.GetCartStatusUseCase>(
        () => _i8.GetCartStatusUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i9.GetCurrentUserPhoneNumberUseCase>(() =>
        _i9.GetCurrentUserPhoneNumberUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i10.GetItemsInCartUseCase>(
        () => _i10.GetItemsInCartUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i11.GetUserDataStatusUseCase>(
        () => _i11.GetUserDataStatusUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i12.GetUserLoggedInStatusUseCase>(
        () => _i12.GetUserLoggedInStatusUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i13.LogoutUseCase>(
        () => _i13.LogoutUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i14.PlaceOrderUseCase>(
        () => _i14.PlaceOrderUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i15.ProductAddToCartUseCase>(
        () => _i15.ProductAddToCartUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i16.ProductDeleteCartUseCase>(
        () => _i16.ProductDeleteCartUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i17.SearchProductsUseCase>(
        () => _i17.SearchProductsUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i18.SendOTPUseCase>(
        () => _i18.SendOTPUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i19.SetAccountDetailsUseCase>(
        () => _i19.SetAccountDetailsUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i20.SetProfileUserDataUseCase>(
        () => _i20.SetProfileUserDataUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i21.StreamAccountDetailsUseCaseUseCase>(() =>
        _i21.StreamAccountDetailsUseCaseUseCase(gh<_i5.FirebaseRepository>()));
    gh.factory<_i22.UseCase>(() => _i22.UseCase());
  }
}
