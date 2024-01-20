import 'package:flutter_modular/flutter_modular.dart';

import 'common/constants/app_paths.dart';
// import 'data/data_module.dart';
import 'features/home/home_module.dart';

class AppModule extends Module {
  // TODO: commented just in case
  // @override
  // List<Module> imports = [
  //   DataModule(),
  // ];

  // TODO: commented just in case
  // @override
  // void binds(i) {
  //   super.binds(i);
  // }

  @override
  void routes(r) {
    r.module(AppPaths.home, module: HomeModule());
    super.routes(r);
  }
}
