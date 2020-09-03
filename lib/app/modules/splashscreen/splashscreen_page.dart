import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:webview_ufrn_api/credenciais_token.dart';
import 'splashscreen_controller.dart';

class SplashscreenPage extends StatefulWidget {
  final String title;
  const SplashscreenPage({Key key, this.title = "Splashscreen"})
      : super(key: key);

  @override
  _SplashscreenPageState createState() => _SplashscreenPageState();
}

class _SplashscreenPageState
    extends ModularState<SplashscreenPage, SplashscreenController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    Credenciais.carregarCredenciais().then((value){
      Modular.to.pushNamedAndRemoveUntil("/webview", (route) => false);
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text("Carregando..."),
      )
    );
  }
}
