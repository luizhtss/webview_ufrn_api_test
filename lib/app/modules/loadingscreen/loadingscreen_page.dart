import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:webview_ufrn_api/credenciais_token.dart';
import 'loadingscreen_controller.dart';

class LoadingScreenPage extends StatefulWidget {
  final String title;
  const LoadingScreenPage({Key key, this.title = "Splashscreen"})
      : super(key: key);

  @override
  _LoadingScreenPageState createState() => _LoadingScreenPageState();
}

class _LoadingScreenPageState
    extends ModularState<LoadingScreenPage, LoadingscreenController> {
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
