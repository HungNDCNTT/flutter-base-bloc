import 'package:flutter/material.dart';
import 'package:flutter_base_bloc/commons/export_commons.dart';

import 'app_button.dart';

class AppWhiteButton extends AppButton {
  AppWhiteButton({
    @required String? title,
    bool isLoading = false,
    VoidCallback? onPressed,
  }) : super(
          title: title,
          isLoading: isLoading,
          onPressed: onPressed,
          textStyle: TextStyle(
            fontSize: 16,
            color: AppColors.text,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.white,
        );
}
