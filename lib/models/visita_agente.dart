import 'package:sistema_saude/models/agente_saude.dart';
import 'package:sistema_saude/models/cidadao_cadastro_visita.dart';

class Visita{
  Cidadao _cidadao;
  Agentesaude _agente;
  String _dataVisita;
  String _observacao;

  Visita(this._cidadao, this._agente, this._dataVisita, this._observacao);

  Cidadao get cidadao => _cidadao;
  set cidadao(Cidadao valor) => _cidadao = valor;

  Agentesaude get agente => _agente;
  set agente(Agentesaude valor) => _agente = valor;

  String get dataVisita => _dataVisita;
  set dataVisita(String valor) => _dataVisita = valor;

  String get observacao => _observacao;
  set observacao(String valor) => _observacao = valor;
}