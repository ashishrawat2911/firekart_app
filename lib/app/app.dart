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
import 'package:firekart/core/impl/app_loading_impl.dart';
import 'package:firekart/core/localization/localization.dart';
import 'package:firekart/core/message_handler/message_handler.dart';
import 'package:firekart/core/state_manager/base_view.dart';
import 'package:firekart/core/theme/theme_provider.dart';
import 'package:firekart/presentation/res/app_theme.dart';
import 'package:firekart/presentation/routes/navigation_handler.dart';
import 'package:flutter/material.dart';

import 'state/app_state.dart';
import 'view_model/app_view_model.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseView<AppViewModel, AppState>(
        builder: (context, viewModel, state) => MaterialApp.router(
          builder: AppLoader.initBuilder(
            builder: (context, child) {
              Localization.setup(context);
              ThemeProvider.setup(context);
              return child!;
            },
          ),
          locale: state.locale,
          theme: AppTheme.appTheme(),
          darkTheme: AppTheme.appTheme(
              //TODO: Implement Dark theme
              // dark: true
              ),
          themeMode: state.themeMode,
          localizationsDelegates: Localization.localizationsDelegates,
          supportedLocales: Localization.supportedLocales,
          debugShowCheckedModeBanner: false,
          routerDelegate: NavigationHandler.routerDelegate,
          routeInformationParser: NavigationHandler.routeInformationParser,
          scaffoldMessengerKey: MessageHandler.scaffoldMessengerKey,
        ),
      );
}
