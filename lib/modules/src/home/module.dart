import 'package:flutter_modular/flutter_modular.dart';

import 'controller.dart';
import 'stores/counter_store.dart';
import 'views/responsive_view.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((_) => CounterStore()),
        Bind.lazySingleton(
          (_) => HomeController(Modular.get<CounterStore>()),
        ),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => HomePage(controller: Modular.get<HomeController>()),
    ),
  ];
}
