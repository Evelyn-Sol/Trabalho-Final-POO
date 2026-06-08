class Pessoa{
  String cpf;
  String nome;
  String datanasc;
  String sexo;

  Pessoa({
    required this.cpf,
    required this.nome,
    required this.datanasc,
    required this.sexo
  });

  void exibirDados(){
    print(cpf);
    print(nome);
    print(datanasc);
    print(sexo);
  }
}