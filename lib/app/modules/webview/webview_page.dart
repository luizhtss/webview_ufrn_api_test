import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_ufrn_api/credenciais_token.dart';
import 'webview_controller.dart';

class WebviewPage extends StatefulWidget {
  final String title;

  const WebviewPage({Key key, this.title = "Webview"}) : super(key: key);

  @override
  _WebviewPageState createState() => _WebviewPageState();
}

class _WebviewPageState extends ModularState<WebviewPage, WebviewController> {

  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  StreamSubscription _onDestroy;
  StreamSubscription<String> _onUrlChanged;
  StreamSubscription<WebViewStateChanged> _onStateChanged;

  @override
  void dispose() {
    _onDestroy.cancel();
    _onUrlChanged.cancel();
    _onStateChanged.cancel();
    flutterWebviewPlugin.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    flutterWebviewPlugin.close();

    _onDestroy = flutterWebviewPlugin.onDestroy.listen((_) {
      print("killed stream :p");
    });
    _onStateChanged =
        flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged state) {
      print("onStateChanged: ${state.type} ${state.url}");
    });

    _onUrlChanged = flutterWebviewPlugin.onUrlChanged.listen((String url) {
      if (mounted) {
        setState(() {
          print("URL changed: $url");
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Credenciais.carregarCredenciais();
    //String loginUrl = Credenciais.URL_AUTH + "authz-server/oauth/token?client_id=${Credenciais.getClientID()}&client_secret=${Credenciais.getClientSecret()}&grant_type=client_credentials";
    String loginUrl = Credenciais.URL_AUTH + "authz-server/oauth/authorize?client_id=${Credenciais.getClientID()}&response_type=code&redirect_uri=http://enderecoapp.com.br/pagina";

    return WebviewScaffold(
        url: loginUrl,
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text("Autenticação Obrigatória"),
        ));
  }
}
