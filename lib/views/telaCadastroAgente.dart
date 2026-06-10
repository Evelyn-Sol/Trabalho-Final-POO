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
    body: SingleChildScrollView (child:Column(children: [
    SizedBox(height: 15,),
    TextField(
      controller: cpfController,
      decoration: InputDecoration(
        labelText: "CPF:",
        prefixIcon: Icon(Icons.badge),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
    ),
    SizedBox(height: 15,), 
    TextField(
      controller: nomeController,
      decoration: InputDecoration(
        labelText: "Nome:",
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
    ),
    SizedBox(height: 15,),
    TextField(
      controller: dataNascimentoController,
      decoration: InputDecoration(
        labelText: "Data de Nascimento",
        prefixIcon: Icon(Icons.calendar_month),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
    ),
    SizedBox(height: 15,),
    TextField(
      controller: sexoController,
      decoration: InputDecoration(
        labelText: "Sexo",
        prefixIcon: Icon(Icons.people),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
    ),
    SizedBox(height: 15,),
    TextField(
      controller: matriculaController,
      decoration: InputDecoration(
        labelText: "Matricula",
        prefixIcon: Icon(Icons.badge),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
    ),
    SizedBox(height: 15,),
    TextField(
      controller: territorioController,
      decoration: InputDecoration(
        labelText: "Territorio",
        prefixIcon: Icon(Icons.map),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
    ),
    SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton.icon(onPressed: () {
        Agentesaude novoAgente = 
          Agentesaude(cpfController.text, 
            nomeController.text,
            dataNascimentoController.text, 
            sexoController.text, 
            matriculaController.text, 
            int.parse(territorioController.text));

        gerenciamento.adicionarAgente(novoAgente);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Cidadão cadastrado com sucesso!'),
          )
        );

        cpfController.clear();
        nomeController.clear();
        dataNascimentoController.clear();
        sexoController.clear();
        matriculaController.clear();
        territorioController.clear();
      },
      icon: Icon(Icons.save),
      label: Text("Salvar"),
      ),
    ),
  ])));
  }
}