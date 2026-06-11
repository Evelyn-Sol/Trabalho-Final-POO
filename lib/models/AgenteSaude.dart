import 'package:sistema_saude/models/Pessoa.dart';

class Agentesaude extends Pessoa{
  String matricula;
  int territorio;

  Agentesaude(String cpf, String nome,
              String datanasc, String sexo, 
              this.matricula, this.territorio) : super(cpf, nome, datanasc, sexo);



  @override
  String toString() {
    return "Nome: $nome | Matricula: $matricula | Territorio: $territorio";
  }
}