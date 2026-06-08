import 'package:flutter/material.dart';
import 'package:sistema_saude/models/Cidadao.dart';
import 'package:sistema_saude/models/dados.dart';


class Telacadastrocidadao extends StatefulWidget{
  @override
  State<Telacadastrocidadao> createState(){
    return _TelaCadastroCidadaoState();
  }
}
class _TelaCadastroCidadaoState extends State<Telacadastrocidadao>{
  TextEditingController cpfController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  TextEditingController dataNascimentoController = TextEditingController();
  TextEditingController sexoController = TextEditingController();
  TextEditingController enderecoController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Cadastro Cidadão")),
    body: SingleChildScrollView (child:Column(children: [Text("CPF"), TextField(controller: cpfController,), 
    Text("Nome"),TextField(controller: nomeController),
    Text("Data de Nascimento"),TextField(controller: dataNascimentoController,),
    Text("Sexo"),TextField(controller: sexoController,),
    Text("Endereço"),TextField(controller: enderecoController,),
    Text("Telefone"),TextField(controller: telefoneController,),
    ElevatedButton(onPressed: (){Cidadao novoCidadao = 
    Cidadao(cpfController.text, 
            nomeController.text,
            dataNascimentoController.text, 
            sexoController.text, 
            enderecoController.text, 
            telefoneController.text);
            gerenciamento.adicionarCidadao(novoCidadao);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
              content: Text('Cidadão cadastrado com sucesso!'),
            ),
          );
          cpfController.clear();
          nomeController.clear();
          dataNascimentoController.clear();
          sexoController.clear();
          enderecoController.clear();
          telefoneController.clear();}, 
    child: Text("Salvar"))])));
  }
}