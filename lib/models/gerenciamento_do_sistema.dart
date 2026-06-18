import 'package:sistema_saude/models/agente_saude.dart';
import 'package:sistema_saude/models/alertas_visitas.dart';
import 'package:sistema_saude/models/cidadao_cadastro_visita.dart';
import 'package:sistema_saude/models/visita_agente.dart';

class Gerenciamento {
  final List<Cidadao> _cidadaos = [];
  final List<Agentesaude> _agentes = [];
  final List<Visita> _visitas = [];
  final List<Alertas> _alerta = [];

  List<Cidadao> get cidadaos => _cidadaos;
  List<Agentesaude> get agentes => _agentes;
  List<Visita> get visitas => _visitas;
  List<Alertas> get alerta => _alerta;

  void adicionarCidadao(Cidadao novoCidadao){
    _cidadaos.add(novoCidadao);
  }

  void adicionarAgente(Agentesaude novoAgente){
    _agentes.add(novoAgente);
  }

  void registrarVisita(Visita novaVisita){
    _visitas.add(novaVisita);
  }

  void removerCidadao(Cidadao cidadao){
    _cidadaos.remove(cidadao);
  }

  void removerAgente(Agentesaude agente){
    _agentes.remove(agente);
  }

  void removerVisita(Visita visita){
    _visitas.remove(visita);
  }

  Cidadao? buscarCidadaoPorCpf(String cpf){
  for(Cidadao cidadao in _cidadaos){
    if(cidadao.cpf == cpf){
      return cidadao;
    }
  }
  return null;
}

Agentesaude? buscarAgentePorMatricula(String matricula){
  for(Agentesaude agente in _agentes){
    if(agente.matricula == matricula){
      return agente;
    }
  }
  return null;
}
}