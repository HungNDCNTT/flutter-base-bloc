import 'package:dio/dio.dart';
import 'package:flutter_base_bloc/configs/app_configs.dart';
import 'package:flutter_base_bloc/network/api_client.dart';

import 'api_interceptors.dart';

class ApiUtil {
  static Dio ?dio;

  static Dio getDio() {
    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = 60000;
      dio!.interceptors.add(ApiInterceptors());
    }
    return dio!;
  }

  static ApiClient getApiClient() {
    final apiClient = ApiClient(getDio(), baseUrl: AppConfigs.baseUrl);
    return apiClient;
  }
}
