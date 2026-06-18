import 'package:sistema_saude/models/pessoas_superclasse.dart';

class Cidadao extends Pessoa{
  String _endereco;
  String _telefone;
  
  Cidadao(super.cpf, super.nome, super.datanasc, super.sexo, this._endereco, this._telefone);
  
  String get endereco => _endereco;
  set endereco(String valor) => _endereco = valor;

  String get telefone => _telefone;
  set telefone(String valor){
    if(int.tryParse(valor) == null){
      throw ArgumentError("Devem ser digitados apenas numeros!");
    }
    _telefone = valor;
  }

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

  @override
  String toString() {
    return "Cidadão: $nome | CPF: $cpf | Telefone: $telefone";
  }
}
/*Exemplo em Dart Puro como se pega os dados pelo console

print("Digite o CPF")
String cpf = stdin.readLineSync!;

print("Digite o Nome")
String nome = stdin.readLineSync!;

print("Digite a Data de Nascimento")
String datanasc = stdin.readLineSync!;

print("Digite o Sexo")
String sexo = stdin.readLineSync!;

print("Digite o Endereço")
String endereco = stdin.readLineSync!;

print("Digite o telefone")
String telefone = stdin.readLineSync!;

Cidadao novoCidadao = Cidadao(
  cpf,
  nome,
  datanasc,
  sexo,
  endereco,
  telefone
);

gerenciamento.adicionarCidadao(novoCidade);

print("Cidadão cadastrado com sucesso!");
*/