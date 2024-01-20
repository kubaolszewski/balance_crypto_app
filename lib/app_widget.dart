import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Balance & Crypto App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: Modular.routerConfig,
    );
  }
}
