import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app_module.dart';
import 'app_widget.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  return runApp(
    ModularApp(
      module: AppModule(),
      child: const MyApp(),
    ),
  );
}
