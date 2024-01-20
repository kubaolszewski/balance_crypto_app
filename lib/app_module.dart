import 'package:flutter_modular/flutter_modular.dart';

import 'data/data_module.dart';

class AppModule extends Module {
  @override
  List<Module> imports = [
    DataModule(),
  ];

  @override
  void binds(i) {
    super.binds(i);
  }

  @override
  void routes(r) {
    super.routes(r);
  }
}
