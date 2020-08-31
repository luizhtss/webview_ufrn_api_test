import 'dart:convert';

import 'package:flutter/services.dart';

class Credenciais{
  static String _clientId;
  static String _clientSecret;
  static String _xApiKey;

  static getClientID() => _clientId;
  static getClientSecret() => _clientSecret;
  static getXApiKey() => _xApiKey;

  static carregarCredenciais(){
      Future<String> jsonFuture = _carregarCredJSON();
      jsonFuture.then((value) => (){
         var jsonDecoded = json.decode(value);
         _clientId = jsonDecoded['client-id'];
         _clientSecret = jsonDecoded['client-secret'];
         _xApiKey = jsonDecoded['x-api-key'];
      });
  }

  static Future<String> _carregarCredJSON() async {
      return await rootBundle.loadString("assets/credenciais.json", cache: false);
  }

}