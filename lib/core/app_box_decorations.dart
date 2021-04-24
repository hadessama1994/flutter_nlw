import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppBoxDecoration {
  static final BoxDecoration decorationStyle = BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.fromBorderSide(BorderSide(color: AppColors.border)));

  static final BoxDecoration decorationCircle = BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(500),
      border: Border.fromBorderSide(BorderSide(color: AppColors.border)));
}
