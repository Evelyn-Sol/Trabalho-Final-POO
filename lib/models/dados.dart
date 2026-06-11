import 'package:sistema_saude/models/AgenteSaude.dart';
import 'package:sistema_saude/models/Cidadao.dart';
import 'package:sistema_saude/models/Gerenciamento.dart';
import 'package:sistema_saude/models/Visita.dart';

Gerenciamento gerenciamento = Gerenciamento();

void instanciandoDados() {
  Cidadao c1 = Cidadao(
    "001.002.003-04",
    "Maria José",
    "10/05/1950",
    "Feminino",
    "Rua Pinheiros, Centro",
    "54999663322",
  );
  Cidadao c2 = Cidadao(
    "005.006.007-08",
    "Paulo Lima",
    "28/10/2019",
    "Masculino",
    "Rua Helmut",
    "54999777899",
  );
  Cidadao c3 = Cidadao(
    "009.010.011-12",
    "Maria Clara",
    "29/09/1985",
    "Feminino",
    "Rua Hortênsias",
    "54999887755",
  );
  gerenciamento.adicionarCidadao(c1);
  gerenciamento.adicionarCidadao(c2);
  gerenciamento.adicionarCidadao(c3);

  Agentesaude a1 = Agentesaude(
    "013.014.015-16",
    "Fernando Silva",
    "01/10/1988",
    "Masculino",
    "1",
    1,
  );
  Agentesaude a2 = Agentesaude(
    "017.018.019-20",
    "Luisa Pereira",
    "14/05/1990",
    "Feminino",
    "2",
    2,
  );
  gerenciamento.adicionarAgente(a1);
  gerenciamento.adicionarAgente(a2);

  Visita v1 = Visita(c1, a2, "10/06/2025", "Pressão arterial: 160/80");
  Visita v2 = Visita(c2, a1, "09/05/2026", "Vacinas em dia");
  Visita v3 = Visita(c3, a1, "10/05/2026", "Entregue exames");
  gerenciamento.registrarVisita(v1);
  gerenciamento.registrarVisita(v2);
  gerenciamento.registrarVisita(v3);
}
