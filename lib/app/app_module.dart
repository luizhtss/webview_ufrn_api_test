import 'package:webview_ufrn_api/app/modules/splashscreen/splashscreen_module.dart';
import 'package:webview_ufrn_api/app/modules/webview/webview_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:webview_ufrn_api/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: SplashscreenModule()),
        ModularRouter("/webview", module: WebviewModule()),

  ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
