// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/di/di.module.dart' as _i3;
import 'package:data/di/di.module.dart' as _i5;
import 'package:domain/di/di.module.dart' as _i6;
import 'package:firebase_impl/di/di.module.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:presentation/di/di.module.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i3.CorePackageModule().init(gh);
    await _i4.FirebaseImplPackageModule().init(gh);
    await _i5.DataPackageModule().init(gh);
    await _i6.DomainPackageModule().init(gh);
    await _i7.PresentationPackageModule().init(gh);
    return this;
  }
}
