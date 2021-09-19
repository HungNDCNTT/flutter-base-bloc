import 'package:flutter/material.dart';
import 'package:flutter_base_bloc/commons/export_commons.dart';

class LoadingMoreRowWidget extends StatelessWidget {
  final double height;
  final Color color;

  LoadingMoreRowWidget({this.height = 80, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Container(
        alignment: Alignment.center,
        child: Container(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            backgroundColor: color,
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.background),
          ),
        ),
      ),
    );
  }
}
