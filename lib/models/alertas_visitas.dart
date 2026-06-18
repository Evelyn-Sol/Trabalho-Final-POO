import 'package:sistema_saude/models/cidadao_cadastro_visita.dart';
import 'package:sistema_saude/models/visita_agente.dart';

class Alertas {
  Cidadao _cidadao;
  Visita _datadaVisita;
  Alertas(this._cidadao, this._datadaVisita);

  Cidadao get cidadao => _cidadao;
  set cidadao(Cidadao valor) => _cidadao = valor;

  Visita get datadaVisita => _datadaVisita;
  set datadaVisita(Visita valor) => _datadaVisita = valor;

  String verificarAlerta(){
    String mensagem = '';
    int idade = _cidadao.calcularidade();
    String data = _datadaVisita.dataVisita;
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
