import 'package:flutter/material.dart';
import 'package:localization/app_localizations.dart';

class Localization {
  static late BuildContext _context;

  static void setup(BuildContext context) {
    _context = context;
  }

  static AppLocalizations get value {
    return AppLocalizations.of(_context)!;
  }

  static List<LocalizationsDelegate<dynamic>> get localizationsDelegates {
    return AppLocalizations.localizationsDelegates;
  }

  static List<Locale> get supportedLocales {
    return AppLocalizations.supportedLocales;
  }
}
