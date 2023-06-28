import 'package:flutter/material.dart';
import 'package:fluttercommerce/core/impl/app_loading_impl.dart';
import 'package:fluttercommerce/core/localization/localization.dart';
import 'package:fluttercommerce/core/message_handler/message_handler.dart';
import 'package:fluttercommerce/core/theme/theme_provider.dart';
import 'package:fluttercommerce/presentation/res/app_theme.dart';

Widget baseApp(Widget home) {
  return MaterialApp(
    builder: AppLoader.initBuilder(
      builder: (context, child) {
        Localization.setup(context);
        ThemeProvider.setup(context);
        return child!;
      },
    ),
    theme: AppTheme.appTheme(),
    darkTheme: AppTheme.appTheme(dark: true),
    localizationsDelegates: Localization.localizationsDelegates,
    supportedLocales: Localization.supportedLocales,
    debugShowCheckedModeBanner: false,
    scaffoldMessengerKey: MessageHandler.scaffoldMessengerKey,
    home:  home,
  );
}
