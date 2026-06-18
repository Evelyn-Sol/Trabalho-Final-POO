import 'package:sistema_saude/models/pessoas_superclasse.dart';

class Agentesaude extends Pessoa{
  String _matricula;
  int _territorio;
  Agentesaude(super.cpf, super.nome, super.datanasc, super.sexo, this._matricula, this._territorio);

  String get matricula => _matricula;
  set matricula(String valor) => _matricula = valor;

  int get territorio => _territorio;
  set territorio(int valor) => _territorio = valor;

  @override
  String toString() {
    return "Nome: $nome | Matricula: $matricula | Territorio: $territorio";
  }
}