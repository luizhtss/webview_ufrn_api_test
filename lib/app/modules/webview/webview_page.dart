import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:webview_ufrn_api/app/modules/httreq.dart';
import 'package:webview_ufrn_api/credenciais_token.dart';
import 'webview_controller.dart';

class WebviewPage extends StatefulWidget {
  final String title;

  const WebviewPage({Key key, this.title = "Webview"}) : super(key: key);

  @override
  _WebviewPageState createState() => _WebviewPageState();
}

class _WebviewPageState extends ModularState<WebviewPage, WebviewController> {
  InAppWebViewController webView;

  @override
  Widget build(BuildContext context) {
    String url = Credenciais.URL_AUTH +
        "authz-server/oauth/authorize?client_id=${Credenciais.getClientID()}&response_type=code&redirect_uri=https://imd.ufrn.br";
    return Scaffold(
      appBar: AppBar(
          title: Text("Autenticação obrigatória"),
          backgroundColor: Colors.green),
      body: InAppWebView(
        initialUrl: url,
        initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(
          cacheEnabled: false,
          clearCache: true,
        )),
        onLoadStop: (InAppWebViewController controller, String url) async {
          if (url.startsWith("https://imd.ufrn.br/")) {
            RegExp regex = new RegExp("code=(.*)");
            String codigo = regex.firstMatch(url)?.group(1);
            print("codigo é: $codigo");
          }
          if (url.startsWith(
              "https://autenticacao.info.ufrn.br/sso-server/login?service")) {
            var html = await controller.evaluateJavascript(source: "window.document.getElementById(\"username\").value");
            print("HTML: $html");
          }
        },
      ),
    );
  }
}
