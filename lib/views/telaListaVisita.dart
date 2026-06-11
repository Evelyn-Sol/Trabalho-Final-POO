import 'package:flutter/material.dart';
import 'package:sistema_saude/models/dados.dart';

class Telalistavisita extends StatefulWidget {
  const Telalistavisita({super.key});

  @override
  State<Telalistavisita> createState() {
    return _TelaListaVisitaState();
  }
}

class _TelaListaVisitaState extends State<Telalistavisita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de visitas"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: gerenciamento.visitas.length,
        itemBuilder: (context, index) {
          var visitas = gerenciamento.visitas[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              title: Text("Nome Cidadão: ${visitas.cidadao.nome}\n"),
              subtitle: Text(
                "CPF do Cidadão: ${visitas.cidadao.cpf}\nNome do Agente: ${visitas.agente.nome}\nMatricula do Agente: ${visitas.agente.matricula}\nTerritorio do Agente: ${visitas.agente.territorio}\nData da Visita: ${visitas.dataVisita}\nObservação: ${visitas.observacao}",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      TextEditingController cpfController =
                          TextEditingController(text: visitas.cidadao.cpf);

                      TextEditingController matriculaController =
                          TextEditingController(text: visitas.agente.matricula);

                      TextEditingController dataController =
                          TextEditingController(text: visitas.dataVisita);

                      TextEditingController observacaoController =
                          TextEditingController(text: visitas.observacao);

                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Editar Visita"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  controller: cpfController,
                                  decoration: InputDecoration(
                                    labelText: "CPF Cidadão",
                                  ),
                                ),
                                TextField(
                                  controller: matriculaController,
                                  decoration: InputDecoration(
                                    labelText: "Matricula do Agente",
                                  ),
                                ),
                                TextField(
                                  controller: dataController,
                                  decoration: InputDecoration(
                                    labelText: "Data da Visita",
                                  ),
                                ),
                                TextField(
                                  controller: observacaoController,
                                  decoration: InputDecoration(
                                    labelText: "Observação",
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Cancelar"),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    visitas.cidadao.cpf = cpfController.text;
                                    visitas.agente.matricula =
                                        matriculaController.text;
                                    visitas.dataVisita = dataController.text;
                                    visitas.observacao =
                                        observacaoController.text;
                                  });
                                },
                                child: Text("Salvar"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Confirmar"),
                            content: Text("Deseja excluir?"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Cancelar"),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    gerenciamento.visitas.remove(visitas);
                                  });
                                },
                                child: Text("Excluir"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
