import 'package:sistema_saude/models/AgenteSaude.dart';
import 'package:sistema_saude/models/Cidadao.dart';

class Visita{
  Cidadao cidadao;
  Agentesaude agente;
  String dataVisita;
  String observacao;

  Visita(this.cidadao, this.agente, this.dataVisita, this.observacao);
}