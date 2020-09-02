import 'webview_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'webview_page.dart';

class WebviewModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => WebviewController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => WebviewPage()),
      ];

  static Inject get to => Inject<WebviewModule>.of();
}
