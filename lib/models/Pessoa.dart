abstract class Pessoa{
  String _cpf;
  String _nome;
  String _datanasc;
  String _sexo;

  Pessoa(
    this._cpf, this._nome, this._datanasc, this._sexo,
);

  get cpf => _cpf;
  get nome => _nome;
  get datanasc => _datanasc;
  get sexo => _sexo;

  set cpf(String valor) => _cpf = valor;
  set nome(String valor) => _nome = valor;
  set datanasc(String valor) => _datanasc = valor;
  set sexo(String valor) => _sexo = valor;

}