import 'package:sistema_saude/models/AgenteSaude.dart';
import 'package:sistema_saude/models/Alertas.dart';
import 'package:sistema_saude/models/Cidadao.dart';
import 'package:sistema_saude/models/Visita.dart';

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