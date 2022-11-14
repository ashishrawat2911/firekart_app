import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Localization {
  static late BuildContext _context;

  static setup(BuildContext context) {
    _context = context;
  }

  static AppLocalizations get value {

    return AppLocalizations.of(_context)!;
  }
}
