import 'package:dio/dio.dart';
import 'package:flutter_base_bloc/configs/app_configs.dart';
import 'package:flutter_base_bloc/models/entities/movie_entity.dart';
import 'package:flutter_base_bloc/models/responses/array_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  ///Setting
  @GET("/settings")
  Future<void> getSetting();

  ///Auth

  /// Movie
  @GET("/discover/movie")
  Future<ArrayResponse<MovieEntity>> getMovies(@Query('api_key') String apiKey, @Query('page') int page);
}
