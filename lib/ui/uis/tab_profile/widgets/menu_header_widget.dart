import 'package:flutter/material.dart';

import 'package:flutter_base_bloc/commons/export_commons.dart';
class MenuHeaderWidget extends StatelessWidget {
  final String title;

  MenuHeaderWidget({this.title = '', Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: AppTextStyle.greyS12Bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
