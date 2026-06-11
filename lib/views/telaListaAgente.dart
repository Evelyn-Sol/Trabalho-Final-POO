import 'package:flutter/material.dart';
import 'package:sistema_saude/models/dados.dart';

class Telalistaagente extends StatefulWidget {
  @override
  State<Telalistaagente> createState() {
    return _TelaListaAgenteState();
  }
}

class _TelaListaAgenteState extends State<Telalistaagente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de agentes"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: gerenciamento.agentes.length,
        itemBuilder: (context, index) {
          var agente = gerenciamento.agentes[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              title: Text(agente.nome),
              subtitle: Text(
                "Matricula: ${agente.matricula}\nTerritorio: ${agente.territorio}",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      TextEditingController nomeController =
                          TextEditingController(text: agente.nome);

                      TextEditingController matriculaController =
                          TextEditingController(text: agente.matricula);

                      TextEditingController territorioController =
                          TextEditingController(
                            text: agente.territorio.toString(),
                          );

                      TextEditingController cpfController =
                          TextEditingController(text: agente.cpf);

                      TextEditingController sexoController =
                          TextEditingController(text: agente.sexo);

                      TextEditingController dataNascimentoController =
                          TextEditingController(text: agente.datanasc);

                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Editar Agente"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  controller: nomeController,
                                  decoration: InputDecoration(
                                    labelText: "Nome",
                                  ),
                                ),
                                TextField(
                                  controller: cpfController,
                                  decoration: InputDecoration(labelText: "CPF"),
                                ),
                                TextField(
                                  controller: dataNascimentoController,
                                  decoration: InputDecoration(
                                    labelText: "Data de Nascimento",
                                  ),
                                ),
                                TextField(
                                  controller: sexoController,
                                  decoration: InputDecoration(
                                    labelText: "Sexo",
                                  ),
                                ),
                                TextField(
                                  controller: matriculaController,
                                  decoration: InputDecoration(
                                    labelText: "Matricula",
                                  ),
                                ),
                                TextField(
                                  controller: territorioController,
                                  decoration: InputDecoration(
                                    labelText: "Território",
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
                                    agente.nome = nomeController.text;
                                    agente.cpf = cpfController.text;
                                    agente.datanasc =
                                        dataNascimentoController.text;
                                    agente.sexo = sexoController.text;
                                    agente.matricula = matriculaController.text;
                                    agente.territorio = int.parse(
                                      territorioController.text,
                                    );
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
                                    gerenciamento.agentes.remove(agente);
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
