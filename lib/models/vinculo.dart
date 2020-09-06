class Vinculo{

  int _identificador;
  bool _ativo;
  String _lotacao;
  String _situacao;

  Vinculo(this._identificador, this._ativo, this._lotacao, this._situacao);

  get identificador => this._identificador;
  get ativo => this._ativo;
  get lotacao => this._lotacao;
  get situacao => this._situacao;

}