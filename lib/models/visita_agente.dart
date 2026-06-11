import 'package:sistema_saude/models/agente_saude.dart';
import 'package:sistema_saude/models/cidadao_cadastro_visita.dart';

class Visita{
  Cidadao cidadao;
  Agentesaude agente;
  String dataVisita;
  String observacao;

  Visita(this.cidadao, this.agente, this.dataVisita, this.observacao);
}