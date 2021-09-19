import 'package:flutter/material.dart';
import 'package:flutter_base_bloc/commons/export_commons.dart';

class AppGradient {
  static final linearGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
     colors: [AppColors.gradientStart, AppColors.gradientEnd], //Flutter bug
  );
}
