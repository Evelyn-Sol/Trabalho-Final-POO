import 'package:flutter/material.dart';
import 'package:sistema_saude/models/Alertas.dart';
import 'package:sistema_saude/models/dados.dart';

class Telaalertas extends StatefulWidget {
  @override
  State<Telaalertas> createState() {
    return _TelaAlertasState();
  }
}

class _TelaAlertasState extends State<Telaalertas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alertas"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: gerenciamento.visitas.length,
        itemBuilder: (context, index) {
          var visita = gerenciamento.visitas[index];

          Alertas alerta = Alertas(visita.cidadao, visita);

          return Card(
            margin: EdgeInsets.all(8),

            child: ListTile(
              title: Text(visita.cidadao.nome),

              subtitle: Text(
                "CPF: ${visita.cidadao.cpf}\n\n"
                "${alerta.verificarAlerta()}",
              ),
            ),
          );
        },
      ),
    );
  }
}
