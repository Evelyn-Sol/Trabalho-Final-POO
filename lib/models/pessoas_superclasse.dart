abstract class Pessoa{
  String _cpf;
  String _nome;
  String _datanasc;
  String _sexo;

  Pessoa(
    this._cpf, this._nome, this._datanasc, this._sexo,
);

  String get cpf => _cpf;
  String get nome => _nome;
  String get datanasc => _datanasc;
  String get sexo => _sexo;

  set cpf(String valor) {
    if(valor.trim().length < 11){
      throw ArgumentError("CPF Inválido! Número de caracteres tem que ser até 11!");
    }
    _cpf = valor;
  }
  set nome(String valor){
    if(valor.trim().isEmpty){
      throw ArgumentError("Nome não pode ser campo vazio!");
    }
    _nome = valor;
  }
  set datanasc(String valor){
    if(!valor.trim().contains("/")){
      throw ArgumentError("Formato de data inválido, deve ser dd/mm/aaaa.");
    }
    _datanasc = valor;
  }
  set sexo(String valor){
    String formato = valor.toUpperCase();
    if(formato != "FEMININO" && formato != "MASCULINO" && formato != "M" && formato != "F"){
      throw ArgumentError("Sexo inválido! Insira por extenso, Masculino ou Feminino, ou apenas M ou F!");
    }
    _sexo = valor;
  }

  @override
  String toString(){
    return "Nome: $nome | CPF: $cpf";
  }

}