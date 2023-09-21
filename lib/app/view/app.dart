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
import 'package:core/impl/app_loading_impl.dart';
import 'package:core/message_handler/message_handler.dart';
import 'package:core/state_manager/base_view.dart';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:assets/res/app_theme.dart';
import 'package:presentation/routes/route_handler.dart';

import '../state/app_state.dart';
import '../view_model/app_view_model.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseView<AppViewModel, AppState>(
        onViewModelReady: (viewModel) {
          viewModel.initialize();
        },
        builder: (context, viewModel, state) => DevicePreview(
          //ignore: avoid_redundant_argument_values
          enabled: false,
          // enabled: !kReleaseMode,
          builder: (context) {
            return MaterialApp.router(
              //ignore: deprecated_member_use
              useInheritedMediaQuery: true,
              builder: AppLoader.initBuilder(
                builder: (context, child) {
                  Localization.setup(context);
                  return child!;
                },
              ),
              locale: state.locale,
              theme: AppTheme.appTheme(),
              darkTheme: AppTheme.appTheme(dark: true),
              themeMode: state.themeMode,
              localizationsDelegates: Localization.localizationsDelegates,
              supportedLocales: Localization.supportedLocales,
              debugShowCheckedModeBanner: false,
              routerDelegate: RouteHandler.routerDelegate,
              routeInformationParser: RouteHandler.routeInformationParser,
              scaffoldMessengerKey: MessageHandler.scaffoldMessengerKey,
            );
          },
        ),
      );
}
