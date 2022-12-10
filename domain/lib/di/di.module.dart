//@GeneratedMicroModule;DomainPackageModule;package:domain/di/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:data/di/di.module.dart' as _i3;
import 'package:data/service/firebase_service.dart' as _i20;
import 'package:domain/mapper/domain_mapper.dart' as _i4;
import 'package:domain/repository/firebase_repository.dart' as _i6;
import 'package:domain/usecases/add_product_to_cart_usecase.dart' as _i16;
import 'package:domain/usecases/delete_product_from_cart_usecase.dart' as _i17;
import 'package:domain/usecases/get_account_details_usecase.dart' as _i5;
import 'package:domain/usecases/get_all_orders_usecase.dart' as _i7;
import 'package:domain/usecases/get_all_product_usecase.dart' as _i8;
import 'package:domain/usecases/get_cart_status_use_case.dart' as _i9;
import 'package:domain/usecases/get_current_user_phone_number_usecase.dart'
    as _i10;
import 'package:domain/usecases/get_items_in_cart_usecase.dart' as _i11;
import 'package:domain/usecases/get_user_data_status_usecase.dart' as _i12;
import 'package:domain/usecases/get_user_logged_in_status.dart' as _i13;
import 'package:domain/usecases/logout_usecase.dart' as _i14;
import 'package:domain/usecases/place_order_usecase.dart' as _i15;
import 'package:domain/usecases/sample_use_case.dart' as _i24;
import 'package:domain/usecases/search_products_use_case.dart' as _i18;
import 'package:domain/usecases/send_otp_usecase.dart' as _i19;
import 'package:domain/usecases/set_account_details_usecase.dart' as _i21;
import 'package:domain/usecases/set_user_profile_data_usecase.dart' as _i22;
import 'package:domain/usecases/stream_account_details_usecase.dart' as _i23;
import 'package:injectable/injectable.dart' as _i1;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
class DomainPackageModule extends _i1.MicroPackageModule {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) async {
    await _i3.DataPackageModule().init(gh);
    gh.lazySingleton<_i4.DomainMapper>(() => _i4.DomainMapperImpl());
    gh.factory<_i5.GetAccountDetailsUseCase>(
        () => _i5.GetAccountDetailsUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i7.GetAllOrdersUseCase>(
        () => _i7.GetAllOrdersUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i8.GetAllProductsUseCase>(
        () => _i8.GetAllProductsUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i9.GetCartStatusUseCase>(
        () => _i9.GetCartStatusUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i10.GetCurrentUserPhoneNumberUseCase>(() =>
        _i10.GetCurrentUserPhoneNumberUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i11.GetItemsInCartUseCase>(
        () => _i11.GetItemsInCartUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i12.GetUserDataStatusUseCase>(
        () => _i12.GetUserDataStatusUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i13.GetUserLoggedInStatusUseCase>(
        () => _i13.GetUserLoggedInStatusUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i14.LogoutUseCase>(
        () => _i14.LogoutUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i15.PlaceOrderUseCase>(
        () => _i15.PlaceOrderUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i16.ProductAddToCartUseCase>(
        () => _i16.ProductAddToCartUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i17.ProductDeleteCartUseCase>(
        () => _i17.ProductDeleteCartUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i18.SearchProductsUseCase>(
        () => _i18.SearchProductsUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i19.SendOTPUseCase>(
        () => _i19.SendOTPUseCase(gh<_i20.FirebaseService>()));
    gh.factory<_i21.SetAccountDetailsUseCase>(
        () => _i21.SetAccountDetailsUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i22.SetProfileUserDataUseCase>(
        () => _i22.SetProfileUserDataUseCase(gh<_i20.FirebaseService>()));
    gh.factory<_i23.StreamAccountDetailsUseCaseUseCase>(() =>
        _i23.StreamAccountDetailsUseCaseUseCase(gh<_i6.FirebaseRepository>()));
    gh.factory<_i24.UseCase>(() => _i24.UseCase());
  }
}
