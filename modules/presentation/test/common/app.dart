import 'package:assets/res/app_theme.dart';
import 'package:core/impl/app_loading_impl.dart';
import 'package:core/message_handler/message_handler.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization/localization.dart';

class TestApp extends StatelessWidget {
  final Widget home;

  const TestApp({required this.home, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: AppLoader.initBuilder(
        builder: (context, child) {
          Localization.setup(context);
          return child!;
        },
      ),
      theme: AppTheme.appTheme(),
      darkTheme: AppTheme.appTheme(dark: true),
      localizationsDelegates: Localization.localizationsDelegates,
      supportedLocales: Localization.supportedLocales,
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: MessageHandler.scaffoldMessengerKey,
      home: home,
    );
  }
}
