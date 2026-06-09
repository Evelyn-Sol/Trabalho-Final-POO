import 'package:flutter/material.dart';
import 'package:sistema_saude/models/dados.dart';

class Telalistacidadao extends StatefulWidget{
  @override
  State<Telalistacidadao> createState(){
  return _TelaListaCidadaoState();
  }
}
class _TelaListaCidadaoState extends State<Telalistacidadao>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de cidadãos"),
      ),
      body: ListView.builder(
        itemCount: gerenciamento.cidadaos.length,
        itemBuilder: (context, index){
          var cidadao = gerenciamento.cidadaos[index];
          return Card(margin: EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
            child: ListTile(
            title: Text(cidadao.nome),
            subtitle: Text("CPF: ${cidadao.cpf}\n Telefone: ${cidadao.telefone}"),
            trailing: Row(
  mainAxisSize: MainAxisSize.min,
  children: [

    IconButton(
      icon: Icon(Icons.edit),
      onPressed: (){
        TextEditingController nomeController =
        TextEditingController(text: cidadao.nome);

        TextEditingController telefoneController =
        TextEditingController(text: cidadao.telefone);

        TextEditingController enderecoController =
        TextEditingController(text: cidadao.endereco);

        showDialog(
          context: context,
          builder: (context){
          return AlertDialog(
          title: Text("Editar Cidadão"),

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
              controller: telefoneController,
              decoration: InputDecoration(
                labelText: "Telefone",
              ),
            ),

            TextField(
              controller: enderecoController,
              decoration: InputDecoration(
                labelText: "Endereço",
              ),
            ),
          ],
        ),

      actions: [
        TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Cancelar"),
        ),

        TextButton(
          onPressed: (){
            setState(() {

              cidadao.nome = nomeController.text;
              cidadao.telefone = telefoneController.text;
              cidadao.endereco = enderecoController.text;

            });

            Navigator.pop(context);
          },
          child: Text("Salvar"),
        ),
      ],
    );
  },
);
      },
    ),

    IconButton(
      icon: Icon(Icons.delete),
      onPressed: (){
        setState(() {
          gerenciamento.cidadaos.remove(cidadao);
        });
      },
    ),
  ],
),
            ),
          );
        }
      ),
    );
  }
}