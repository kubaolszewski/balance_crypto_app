import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../network/api_client.dart';

part 'currencies_rates_service.g.dart';

@RestApi()
abstract class CurrenciesExchangeService {
  static CurrenciesExchangeService create(ApiClient dio) => _CurrenciesExchangeService(dio.dio);

  @GET('/exchangerate')
  Future<Map<String, dynamic>?> fetchCurrenciesExchangeRate({
    @Query('currency') required String currencyName,
    @Query('conversion_currency') String conversionCurrency = 'USD',
  });
}
