import 'package:webview_ufrn_api/models/vinculo.dart';

class Discente{
  String _nome;
  int _matricula;
  List<Vinculo> _vinculos;

  Discente(this._nome, this._matricula, this._vinculos);

  get nome => this._nome;
  get matricula => this._matricula;
  get vinculos => this._vinculos;


}