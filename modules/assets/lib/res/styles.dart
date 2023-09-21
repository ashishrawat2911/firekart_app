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
import 'package:flutter/material.dart';

import 'colors.gen.dart';

class Styles {
  static LinearGradient get appBackGradient => const LinearGradient(
        colors: [AppColors.color96C160, AppColors.color6EBA49],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
}
