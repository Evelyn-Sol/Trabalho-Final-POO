import 'package:sistema_saude/models/agente_saude.dart';
import 'package:sistema_saude/models/alertas_visitas.dart';
import 'package:sistema_saude/models/cidadao_cadastro_visita.dart';
import 'package:sistema_saude/models/visita_agente.dart';

class Gerenciamento {
  List<Cidadao> cidadaos = [];
  List<Agentesaude> agentes = [];
  List<Visita> visitas = [];
  List<Alertas> alerta = [];

  void adicionarCidadao(Cidadao novoCidadao){
    cidadaos.add(novoCidadao);
  }

  void adicionarAgente(Agentesaude novoAgente){
    agentes.add(novoAgente);
  }

  void registrarVisita(Visita novaVisita){
    visitas.add(novaVisita);
  }

  Cidadao? buscarCidadaoPorCpf(String cpf){
  for(Cidadao cidadao in cidadaos){
    if(cidadao.cpf == cpf){
      return cidadao;
    }
  }
  return null;
}

Agentesaude? buscarAgentePorMatricula(String matricula){
  for(Agentesaude agente in agentes){
    if(agente.matricula == matricula){
      return agente;
    }
  }
  return null;
}
}