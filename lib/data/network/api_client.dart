import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  ApiClient() {
    dio = _configureDio();
  }

  late final Dio dio;

  Dio _configureDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://rest.coinapi.io/v1',
        headers: {
          'apikey': 'AC91C75A-6B9B-4E11-8F80-1F123E2B216E',
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
