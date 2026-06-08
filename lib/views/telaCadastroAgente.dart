import 'package:flutter/material.dart';
import 'package:sistema_saude/models/AgenteSaude.dart';
import 'package:sistema_saude/models/dados.dart';

class Telacadastroagente extends StatefulWidget{
  @override
  State<Telacadastroagente> createState(){
    return _TelaCadastroAgenteState();
  }
}
class _TelaCadastroAgenteState extends State<Telacadastroagente>{
  TextEditingController cpfController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  TextEditingController dataNascimentoController = TextEditingController();
  TextEditingController sexoController = TextEditingController();
  TextEditingController matriculaController = TextEditingController();
  TextEditingController territorioController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Cadastro Agente")),
    body: SingleChildScrollView (child:Column(children: [Text("CPF"), TextField(controller: cpfController,), 
    Text("Nome"),TextField(controller: nomeController),
    Text("Data de Nascimento"),TextField(controller: dataNascimentoController,),
    Text("Sexo"),TextField(controller: sexoController,),
    Text("Matricula"),TextField(controller: matriculaController,),
    Text("Território"),TextField(controller: territorioController,),
    ElevatedButton(onPressed: (){Agentesaude novoAgente = 
    Agentesaude(cpfController.text, 
            nomeController.text,
            dataNascimentoController.text, 
            sexoController.text, 
            matriculaController.text, 
            int.parse(territorioController.text));
            gerenciamento.adicionarAgente(novoAgente);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
              content: Text('Agente cadastrado com sucesso!'),
            ),
          );
          cpfController.clear();
          nomeController.clear();
          dataNascimentoController.clear();
          sexoController.clear();
          matriculaController.clear();
          territorioController.clear();}, 
    child: Text("Salvar"))])));
  }
}