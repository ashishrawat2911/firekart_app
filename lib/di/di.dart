/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:core/di/di.module.dart';
import 'package:data/di/di.module.dart';
import 'package:domain/di/di.module.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

@InjectableInit(asExtension: true, externalPackageModulesBefore: [
  ExternalModule(CorePackageModule),
  ExternalModule(DataPackageModule),
  ExternalModule(DomainPackageModule),
])
Future<GetIt> registerDependencies() async {
  return _getIt.init();
}

final GetIt _getIt = GetIt.I;
