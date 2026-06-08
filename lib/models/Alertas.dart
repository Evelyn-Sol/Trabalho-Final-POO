import 'package:sistema_saude/models/Cidadao.dart';
import 'package:sistema_saude/models/Visita.dart';

class Alertas {
  Cidadao cidadao;
  Visita datadaVisita;
  Alertas(this.cidadao, this.datadaVisita);

  String verificarAlerta(){
    String mensagem = '';
    int idade = cidadao.calcularidade();
    String data = datadaVisita.dataVisita;
    if(idade >= 60 || idade < 10){
      mensagem += "Cidadão Prioritário!\n";
    }

    List<String> particao = data.split('/');
    int dia = int.parse(particao[0]);
    int mes = int.parse(particao[1]);
    int ano = int.parse(particao[2]);

    DateTime datavisita = DateTime(ano, mes, dia);
    DateTime dataAtual = DateTime.now();
    int diferenca = dataAtual.difference(datavisita).inDays;
    if(diferenca > 30){
      mensagem += "Visita atrasada há $diferenca dias.\n";
    }
    if(mensagem == ''){
      mensagem += "Nenhuma prioridade para esse cidadão!\n";}
    return mensagem;
    }
  }
