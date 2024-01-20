import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../common/config/env_config_interface.dart';

class ApiClient {
  ApiClient(
    this.envConfig,
  ) {
    dio = _configureDio();
  }

  late final Dio dio;
  final EnvConfigInterface envConfig;

  Dio _configureDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://rest.coinapi.io/v1',
        headers: {
          'X-CoinAPI-Key': envConfig.apiKey,
        },
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: false,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      );
    }
    return dio;
  }
}
