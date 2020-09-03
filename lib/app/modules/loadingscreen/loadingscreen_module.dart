import 'loadingscreen_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'loadingscreen_page.dart';

class LoadingscreenModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoadingscreenController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => LoadingScreenPage()),
      ];

  static Inject get to => Inject<LoadingscreenModule>.of();
}
