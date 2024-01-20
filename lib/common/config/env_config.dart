import 'env_config_interface.dart';
import 'env_keys.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvConfig implements EnvConfigInterface {
  @override
  String get apiKey => dotenv.get(EnvKeys.apiKey);
  @override
  String get baseUrl => dotenv.get(EnvKeys.baseApiUrl);
}
