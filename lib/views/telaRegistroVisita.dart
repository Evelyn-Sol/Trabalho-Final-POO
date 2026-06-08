import 'package:flutter/material.dart';
import 'package:sistema_saude/models/AgenteSaude.dart';
import 'package:sistema_saude/models/Cidadao.dart';
import 'package:sistema_saude/models/Visita.dart';
import 'package:sistema_saude/models/dados.dart';


class Telaregistrovisita extends StatefulWidget{
  @override
  State<Telaregistrovisita> createState(){
    return _TelaRegistroVisitaState();
  }
}
class _TelaRegistroVisitaState extends State<Telaregistrovisita>{
  TextEditingController agenteController = TextEditingController();
  TextEditingController cidadaoController = TextEditingController();
  TextEditingController dataVisitaController = TextEditingController();
  TextEditingController observacaoController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Registrar Visita")),
    body: SingleChildScrollView (child:Column(children: [Text("CPF Cidadão"), TextField(controller: cidadaoController,), 
    Text("Matrícula do Agente"),TextField(controller: agenteController),
    Text("Data da Visita"),TextField(controller: dataVisitaController,),
    Text("Observação"),TextField(controller: observacaoController,),
    ElevatedButton(onPressed: (){Cidadao? cidadao =
        gerenciamento.buscarCidadaoPorCpf(
        cidadaoController.text,
    );
    Agentesaude? agente =
    gerenciamento.buscarAgentePorMatricula(
      agenteController.text,
    );
    if(cidadao == null || agente == null){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        "Cidadão ou agente não encontrado!"
      ),
    ),
  );
  return;
}
      Visita novaVisita = 
    Visita(cidadao,
           agente,
           dataVisitaController.text,
           observacaoController.text,);
            gerenciamento.registrarVisita(novaVisita);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
              content: Text('Visita registrada com sucesso!'),
            ),
          );
          cidadaoController.clear();
          agenteController.clear();
          dataVisitaController.clear();
          observacaoController.clear();}, 
    child: Text("Salvar"))])));
  }
}