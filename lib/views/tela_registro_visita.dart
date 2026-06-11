import 'package:flutter/material.dart';
import 'package:sistema_saude/models/agente_saude.dart';
import 'package:sistema_saude/models/cidadao_cadastro_visita.dart';
import 'package:sistema_saude/models/visita_agente.dart';
import 'package:sistema_saude/models/dados_instanciados.dart';

class Telaregistrovisita extends StatefulWidget {
  const Telaregistrovisita({super.key});

  @override
  State<Telaregistrovisita> createState() {
    return _TelaRegistroVisitaState();
  }
}

class _TelaRegistroVisitaState extends State<Telaregistrovisita> {
  TextEditingController agenteController = TextEditingController();
  TextEditingController cidadaoController = TextEditingController();
  TextEditingController dataVisitaController = TextEditingController();
  TextEditingController observacaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrar Visita"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(height: 15),
              TextField(
                controller: cidadaoController,
                decoration: InputDecoration(
                  labelText: "CPF do Cidadão",
                  prefixIcon: Icon(Icons.badge, size: 40, color: Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: agenteController,
                decoration: InputDecoration(
                  labelText: "Matricula do Agente",
                  prefixIcon: Icon(
                    Icons.assignment_ind,
                    size: 40,
                    color: Colors.green,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: dataVisitaController,
                decoration: InputDecoration(
                  labelText: "Data da Visita",
                  prefixIcon: Icon(
                    Icons.calendar_month,
                    size: 40,
                    color: Colors.purple,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: observacaoController,
                decoration: InputDecoration(
                  labelText: "Observações",
                  prefixIcon: Icon(Icons.notes, size: 40, color: Colors.red),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Cidadao? cidadao = gerenciamento.buscarCidadaoPorCpf(
                      cidadaoController.text,
                    );
                    Agentesaude? agente = gerenciamento
                        .buscarAgentePorMatricula(agenteController.text);
                    if (cidadao == null || agente == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Cidadão ou agente não encontrado!"),
                        ),
                      );
                      return;
                    }
                    Visita novaVisita = Visita(
                      cidadao,
                      agente,
                      dataVisitaController.text,
                      observacaoController.text,
                    );
                    if (cidadao.cpf.isEmpty ||
                        agente.matricula.isEmpty ||
                        dataVisitaController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Campos vazios, preencha corretamente!",
                          ),
                        ),
                      );
                      return;
                    }
                    if (!dataVisitaController.text.contains("/")) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Utilize o formato dd/mm/aa")),
                      );
                      return;
                    }
                    gerenciamento.registrarVisita(novaVisita);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Visita registrada com sucesso!')),
                    );
                    cidadaoController.clear();
                    agenteController.clear();
                    dataVisitaController.clear();
                    observacaoController.clear();
                  },
                  icon: Icon(Icons.save, color: Colors.white),
                  label: Text("Salvar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
