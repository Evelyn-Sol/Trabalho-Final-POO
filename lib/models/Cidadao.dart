import 'package:sistema_saude/models/Pessoa.dart';

class Cidadao extends Pessoa{
  String endereco;
  String telefone;

  Cidadao(String cpf,
          String nome,
          String datanasc,
          String sexo,
          this.endereco,
          this.telefone) : super(cpf: cpf, nome: nome, datanasc: datanasc, sexo: sexo);


  int calcularidade(){
    List<String> particao = datanasc.split('/');
    int dia = int.parse(particao[0]);
    int mes = int.parse(particao[1]);
    int ano = int.parse(particao[2]);

    DateTime datanascimento = DateTime(ano, mes, dia);
    DateTime dataAtual = DateTime.now();
    int idade = dataAtual.year - datanascimento.year;
    if(dataAtual.month < datanascimento.month || dataAtual.month == datanascimento.month && dataAtual.day < datanascimento.day){
      idade--;
    }
    return idade;
  }

  void verificarPrioridade(){
    int idade = calcularidade();
    if(idade > 60){
      print("Idoso!");
    }
    if(idade < 10){
      print("Criança!");
    }
  }
}