import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'network/api_client.dart';

class DataModule extends Module {
  @override
  void exportedBinds(i) {
    i.addInstance<Dio>(Dio());
    i.addSingleton<ApiClient>(ApiClient.new);
    super.exportedBinds(i);
  }
}
