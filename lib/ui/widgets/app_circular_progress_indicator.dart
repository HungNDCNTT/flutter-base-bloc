import 'package:flutter/material.dart';
import 'package:flutter_base_bloc/commons/export_commons.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  final Color color;

  AppCircularProgressIndicator({this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
          backgroundColor: color,
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.main),
        ),
      ),
    );
  }
}
