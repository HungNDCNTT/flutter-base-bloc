import 'package:flutter/material.dart';
import 'package:flutter_base_bloc/commons/export_commons.dart';
import 'package:flutter_base_bloc/models/entities/movie_entity.dart';

import '../widgets/images/app_cache_image.dart';

class MovieWidget extends StatelessWidget {
  final MovieEntity? movie;
  final VoidCallback? onPressed;

  MovieWidget({this.movie, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 86,
      color: Colors.red,
    );
  }

  Widget _buildThumbWidget() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: AppColors.lightGray,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        child: AppCacheImage(
          url: movie?.posterUrl ?? '',
        ),
      ),
    );
  }
}
