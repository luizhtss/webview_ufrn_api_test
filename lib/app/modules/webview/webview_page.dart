import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'webview_controller.dart';

class WebviewPage extends StatefulWidget {
  final String title;
  const WebviewPage({Key key, this.title = "Webview"}) : super(key: key);

  @override
  _WebviewPageState createState() => _WebviewPageState();
}

class _WebviewPageState extends ModularState<WebviewPage, WebviewController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
