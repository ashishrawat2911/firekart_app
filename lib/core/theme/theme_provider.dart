/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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
import 'package:flutter/material.dart';

class ThemeProvider {
  static late BuildContext _context;

  ///ignore:use_setters_to_change_properties
  static void setup(BuildContext context) {
    _context = context;
  }

  static bool get hasDarkMode {
    var brightness = MediaQuery.of(_context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return isDarkMode;
  }

  static TextTheme get textTheme {
    return Theme.of(_context).textTheme;
  }
}
