import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webview_ufrn_api/credenciais_token.dart';
import 'package:webview_ufrn_api/models/discente.dart';

class HttpRequest {
  String _oauth_code;
  Map<String, String> _headers = Map<String, String>();

  HttpRequest(this._oauth_code);

  Future<Discente> carregarInformacoesDiscente(String login) async {
    String nome;
    int id;
    _getDiscenteInfo(login).then((value) async {
      //print('Value: '+ value.statusCode.toString());
      var json = jsonDecode(value.body); // JSON Voorhes
      print("Json: $json");
      nome = json['nome-pessoa'];
      id = json['id-usuario'];
      String url = Credenciais.URL + "vinculo/v1/vinculos?id-usuario=$id";
      http.Response resp = await http.get(url, headers: _headers);
      print(resp.body);
    });
  }
  Future _getDiscenteInfo(String login) async {
      var value = await _reqTokens();
      var json = jsonDecode(value.body);
      String url = Credenciais.URL + "usuario/v1/usuarios?login=$login";
      _headers['Authorization'] = "bearer ${json['access_token']}";
      _headers['x-api-key'] = Credenciais.getXApiKey();
      var resp = await http.post(url, headers: _headers);
      return resp;
  }
  Future<http.Response> _reqTokens() async {
    String url = Credenciais.URL + 'authz-server/oauth/token?client_id=${Credenciais.getClientID()}&client_secret=${Credenciais.getClientSecret()}&redirect_uri=https://imd.ufrn.br&grant_type=authorization_code&code=$_oauth_code';
    var response = await http.post(url);
    return response;
  }
}
