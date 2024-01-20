import 'package:flutter_modular/flutter_modular.dart';

import '../../data/data_module.dart';
import 'cubit/home_cubit.dart';
import 'home_screen.dart';

class HomeModule extends Module {
  @override
  List<Module> imports = [
    DataModule(),
  ];

  @override
  void binds(i) {
    i.addSingleton<HomeCubit>(HomeCubit.new);
    super.binds(i);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomeScreen());
    super.routes(r);
  }
}
