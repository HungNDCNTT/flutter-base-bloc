import 'package:flutter/cupertino.dart';
import 'package:flutter_base_bloc/configs/app_configs.dart';
import 'package:flutter_base_bloc/models/entities/movie_entity.dart';
import 'package:flutter_base_bloc/models/responses/array_response.dart';
import 'package:flutter_base_bloc/network/api_client.dart';

abstract class MovieRepository {
  Future<ArrayResponse<MovieEntity>> getMovies({@required int page});

  Future<MovieEntity> getMovie(int id);
}

class MovieRepositoryImpl extends MovieRepository {
  ApiClient? _apiClient;

  MovieRepositoryImpl(ApiClient? client) {
    _apiClient = client;
  }

  @override
  Future<MovieEntity> getMovie(int id) {
    // TODO: implement getMovie
    throw UnimplementedError();
  }

  @override
  Future<ArrayResponse<MovieEntity>> getMovies({@required int? page}) async {
    try {
      return _apiClient!.getMovies(MovieAPIConfig.APIKey, page??0);
    } catch (e) {
      throw e;
    }
  }
}
