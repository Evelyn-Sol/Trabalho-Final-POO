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
      controller: enderecoController,
      decoration: InputDecoration(
        labelText: "Endereço",
        prefixIcon: Icon(Icons.home),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
    ),
    SizedBox(height: 15,),
    TextField(
      controller: telefoneController,
      decoration: InputDecoration(
        labelText: "Telefone",
        prefixIcon: Icon(Icons.phone),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
    ),
    SizedBox(height: 15,),
    SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton.icon(onPressed: () {
        Cidadao novoCidadao = 
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
          )
        );

        cpfController.clear();
        nomeController.clear();
        dataNascimentoController.clear();
        sexoController.clear();
        enderecoController.clear();
        telefoneController.clear();
      },
      icon: Icon(Icons.save),
      label: Text("Salvar"),
      ),
    ),
    ])));
  }
}